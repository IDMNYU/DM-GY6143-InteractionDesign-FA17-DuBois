/**
	============================================================================
    \file s2m.wacomtouch.m
    \version 1.1
    \author Charles Gondre - CNRS-LMA-S2M
    
    ©copyright 2012 cnrs-lma
    
	----------------------------------------------------------------------------
    
    \brief a external to get the wacom multitouch data. need max 5 or newer.
            and OS 10.6 or newer.
    supported tablet are listed here :
    http://www.wacomeng.com/touch/WacomFeelMulti-TouchFAQ.htm#_Toc331140757
 
    (cf http://www.wacomeng.com for information about the wacommultitouch lib)
 
	----------------------------------------------------------------------------
 
     This software is governed by the CeCILL license under French law and
     abiding by the rules of distribution of free software.  You can use,
     modify and/ or redistribute the software under the terms of the CeCILL
     license as circulated by CEA, CNRS, and INRIA at the following URL
     "http://www.cecill.info".
     
     As a counterpart to the access to the source code and rights to copy,
     modify and redistribute granted by the license, users are provided
     only with a limited warranty and the software's author, the holder of
     the economic rights, and the successive licensors have only limited
     liability.
     
     In this respect, the user's attention is drawn to the risks associated
     with loading, using, modifying and/or developing or reproducing the
     software by the user in light of its specific status of free software,
     that may mean that it is complicated to manipulate, and that also
     therefore means that it is reserved for developers and experienced
     professionals having in-depth computer knowledge. Users are therefore
     encouraged to load and test the software's suitability as regards
     their requirements in conditions enabling the security of their
     systems and/or data to be ensured and, more generally, to use and
     operate it in the same conditions as regards security.
     
     The fact that you are presently reading this means that you have had
     knowledge of the CeCILL license and that you accept its terms.
 
	============================================================================
*/

// max headers
#include "ext.h"
#include "ext_obex.h"

// wacom multitouch headers
#if defined (MAC_VERSION)
 #include <WacomMultiTouch/WacomMultiTouch.h>
 #include <CoreServices/CoreServices.h>
#elif defined (WIN_VERSION)
 #include "./Wacom_Feel_SDK/inc/WacomMultiTouch.h"
#endif

//==============================================================================

// maximal number of [s2m.wacomtouch] instances that can be created within max
#define S2MWACOMTOUCH_MAXINSTANCES (32)

// maximal number of wacom devices that can be connected at the same time
#define S2MWACOMTOUCH_MAXDEVICES (32)

// maximal number of fingers on one device at the same time
#define S2MWACOMTOUCH_MAXFINGERS (64)

// version number of [s2m.wacomtouch]
#define S2MWACOMTOUCH_VERSION "1.1"

t_class *wacomtouch_class;

//==============================================================================
// Callback Prototypes

void s2mAttachCallback (WacomMTCapability deviceInfo, void *userInfo);
void s2mDetachCallback (int deviceID, void *userInfo);
int s2mFingerCallback (WacomMTFingerCollection *fingerPacket, void *userData);

//==============================================================================

// to change the WMTProcessingMode
// 0 for WMTProcessingModeNone (default); 1 for WMTProcessingModeObserver
long a_observer; // (attribute) 

//==============================================================================

typedef struct _wacomtouch
{    
    t_object ob; // the object itself (must be first)

    void *outlet1; // Fingers data
    void *outlet2; // Fingers Collection properties
    void *outlet3; // device infos
    void *outlet4; // to umenu
    
    // for the tablet selection in the umenu
    int selectedMenuIndex;
    
    // to change the xyrange mode ( logical (default), 0-1 proportional, mm, 0-1)
    long a_xyrange; // (attribute)
    
    // for a wacom bug workaround
    int activeFingersID[S2MWACOMTOUCH_MAXINSTANCES][S2MWACOMTOUCH_MAXFINGERS];
    
} t_wacomtouch;


//==============================================================================
/**
    to keep the "listeners" and the capabilities of a device.
*/
typedef struct _WacomDevice
{
    WacomMTCapability capabilities;
    t_wacomtouch *fingersListeners[S2MWACOMTOUCH_MAXINSTANCES];
    
    int nbFingersListeners;
    
    int ID;
    int connected;
    
} WacomDevice;

//============================== global stuff ==================================

static int isTouchAPIConnected = 0;

/**
    a dictionnary.
    each key is a tablet DeviceID, and each value is a WacomDevice.
    the keys are not ordered. use connectedDevicesIDs to get the right order.
*/
static WacomDevice **connectedDevices;

/**
    deviceIds of the connected devices.
    The order of the IDS is always in the order of the umenu.
*/
static int *connectedDevicesIDs;

/** number of connected devices. */
static int nbConnectedDevices;

// we keep the instances in there. used when attach and dettach callbacks are called
t_wacomtouch **s2mWacomTouchInstances;
int nbWacomtouchInstances;

/** does the given s2m.wacomtouch instance listens fingers of the given device */
int hasFingerListener (WacomDevice *device, t_wacomtouch* wacomTouchInstance)
{
    int i;
    int found = 0;
    
    for (i = 0 ; i < device->nbFingersListeners ; ++i)
    {
        if (device->fingersListeners[i] == wacomTouchInstance)
        {
            found = 1;
            break;
        }
    }
    return found;
}

//==============================================================================

void *wacomtouch_new (t_symbol *s, long argc, t_atom *argv);
void wacomtouch_free (t_wacomtouch *x);
void wacomtouch_assist (t_wacomtouch *x, void *b, long m, long a, char *s);
void wacomtouch_loadbang (t_wacomtouch *x);

// utils
WacomDevice* getDeviceFromID (int deviceID);
int getDeviceID (int menuIndex);
int getMenuIndexFromID (int deviceID);
WacomDevice* getDeviceFromMenuIndex (int menuIndex);
int isDeviceConnected (WacomDevice *device);
int isDeviceIDconnected (int deviceID);
int isOpaqueDevice (WacomDevice *device);

// "actions"
void outputFingers (t_wacomtouch *x, WacomMTFingerCollection *fingerCollection);
void outputCapabilities (t_wacomtouch *x, WacomMTCapability *tabCapa);

// "listeners"
void addAllDevicesFingersListener (t_wacomtouch *x);
void removeAllDevicesFingersListener (t_wacomtouch *x);
void addDeviceFingersListener (t_wacomtouch *x, WacomDevice* device);
void removeDeviceFingersListener (t_wacomtouch *x, WacomDevice* device);

// callbacks :
static void registerWacomCallbacks (void);
void deviceAttached (t_wacomtouch *x, WacomDevice* device);
void deviceDettached (t_wacomtouch *x, WacomDevice* device);

// max messages :
void wacomtouch_poll (t_wacomtouch *x);
void wacomtouch_nopoll (t_wacomtouch *x);
void wacomtouch_menu (t_wacomtouch *x);
void wacomtouch_getinfo (t_wacomtouch *x);
void wacomtouch_int (t_wacomtouch *x, long n);

t_max_err wacomtouch_xyrange_get (t_wacomtouch *x, void *attr, long *ac, t_atom **av);
t_max_err wacomtouch_xyrange_set (t_wacomtouch *x, void *attr, long ac, t_atom *av);

t_max_err wacomtouch_observer_get (t_wacomtouch *x, void *attr, long *ac, t_atom **av);
t_max_err wacomtouch_observer_set (t_wacomtouch *x, void *attr, long ac, t_atom *av);

//==============================================================================

/** Called when maxMsp quits. Desallocating golbal stuff here. */
static void S2Mwacomtouch_terminate()
{
    int i;
    for (i = 0 ; i < nbConnectedDevices ; ++i)
    {
        const int deviceID = connectedDevicesIDs[i];
        WacomMTRegisterFingerReadCallback (deviceID, NULL, WMTProcessingModeNone, NULL, NULL);
        WacomMTRegisterFingerReadCallback( deviceID, NULL, WMTProcessingModeObserver, NULL, NULL);
        free (connectedDevices[i]);
    }
    
    free (connectedDevices);
    free (connectedDevicesIDs);
    free (s2mWacomTouchInstances);
    
	if (isTouchAPIConnected == 1 && WacomMTQuit != NULL)
		WacomMTQuit();
}

//==============================================================================

/** Entry Point when loaded by Max */
int C74_EXPORT main (void)
{
    int i;
    t_class *c;
    
    connectedDevices = (WacomDevice**) malloc (S2MWACOMTOUCH_MAXDEVICES * sizeof (WacomDevice*));
    connectedDevicesIDs = (int*) malloc (S2MWACOMTOUCH_MAXDEVICES * sizeof (int));
    
    s2mWacomTouchInstances = (t_wacomtouch**) malloc (S2MWACOMTOUCH_MAXINSTANCES * sizeof (t_wacomtouch*));
                
    for (i = 0 ; i < S2MWACOMTOUCH_MAXDEVICES ; ++i)
    {
        connectedDevices[i] = NULL;
        connectedDevicesIDs[i] = -1;
    }
                    
    for (i = 0 ; i < S2MWACOMTOUCH_MAXINSTANCES ; ++i)
    {
        s2mWacomTouchInstances[i] = NULL;
    }
    
    c = class_new ("s2m.wacomtouch", (method) wacomtouch_new, (method) wacomtouch_free, (long) sizeof (t_wacomtouch), 0L , A_GIMME, 0);

    class_addmethod (c, (method) wacomtouch_assist,     "assist", A_CANT, 0);

    class_addmethod (c, (method) wacomtouch_poll,       "poll",     0);
    class_addmethod (c, (method) wacomtouch_nopoll,     "nopoll",   0);
    class_addmethod (c, (method) wacomtouch_menu,       "menu",     0);
    class_addmethod (c, (method) wacomtouch_loadbang,   "loadbang", 0);
    class_addmethod (c, (method) wacomtouch_getinfo,    "getinfo",  0);
    class_addmethod (c, (method) wacomtouch_int,        "int", A_LONG, 0);
   
    CLASS_METHOD_ATTR_PARSE (c, "loadbang", "undocumented", gensym ("long"), 0L, "1");
   
    CLASS_ATTR_LONG (c, "xyrange", 0 , t_wacomtouch, a_xyrange);
	CLASS_ATTR_ORDER (c, "xyrange", 0, "1"); // top of the list
	// index-based enumeration style
	CLASS_ATTR_ENUMINDEX (c, "xyrange", 0, "\"logical \" proportional \"physical (mm)\" \"0-1\"");
	// override default accessors
	CLASS_ATTR_ACCESSORS (c, "xyrange", (method) wacomtouch_xyrange_get, (method) wacomtouch_xyrange_set);
    
    STATIC_ATTR_LONG (c, "observer", 0 , a_observer);
	CLASS_ATTR_STYLE_LABEL (c, "observer", 0, "onoff", "observer");
	// override default accessors
	CLASS_ATTR_ACCESSORS (c, "observer", (method) wacomtouch_observer_get, (method) wacomtouch_observer_set);
    
    class_register (CLASS_BOX, c);
    wacomtouch_class = c;
    post ("[s2m.wacomtouch] version %s, by Charles Gondre - cnrs-lma", S2MWACOMTOUCH_VERSION); //, __DATE__);
    
    //--------------------------------------------------------------------------
    // check out max version : [s2m.wacomtouch] works with max 5 or newer
    if ((maxversion() & 0x0fff) < 0x0500)
    {
        error ("[s2m.wacomtouch] does not work with max versions prior to max5.");
        return 1;
    }
    
    // check out mac OS version : [s2m.wacomtouch] works with OS 10.6 or newer.
#if defined(MAC_VERSION)
    SInt32 major, minor;
    Gestalt (gestaltSystemVersionMajor, &major);
    Gestalt (gestaltSystemVersionMinor, &minor);
    
    if ( (major == 10 && minor < 6) || ( major < 10 ) )
    {
        error ("[s2m.wacomtouch] does not work with mac OS versions prior to 10.6");
        return 1;
    }
#endif

    //--------------------------------------------------------------------------
    if (WacomMTInitialize != NULL)
    {
        WacomMTError err = WacomMTInitialize (WACOM_MULTI_TOUCH_API_VERSION);
        
        if (err == WMTErrorSuccess)
        {
            isTouchAPIConnected = 1;
                            
            quittask_install ((method) S2Mwacomtouch_terminate, NULL);

            registerWacomCallbacks();
        }
        else
        {
            error ("error initializing with wacomTouchAPI: %i", err);
            return 1;
        }
    }
    else
    {
        error ("WacomMultiTouch.framework is not installed.");
        return 1;
    }
    
    a_observer = 0;
    
    return 0;
}


//==============================================================================


void *wacomtouch_new (t_symbol *s, long argc, t_atom *argv)
{
    t_wacomtouch *x = NULL;
    int i, j;
    
    if (nbWacomtouchInstances < S2MWACOMTOUCH_MAXINSTANCES)
    {
        if ( (x = (t_wacomtouch *) object_alloc ((t_class*) wacomtouch_class)) )
        {
            for (i = 0 ; i < S2MWACOMTOUCH_MAXINSTANCES ; ++i)
            {
                if (s2mWacomTouchInstances[i] == NULL)
                {
                    s2mWacomTouchInstances[i] = x;
                    nbWacomtouchInstances++;
                    break;
                }
            }
            
            for (i = 0 ; i < S2MWACOMTOUCH_MAXDEVICES ; ++i)
            {
                for (j = 0 ; j < S2MWACOMTOUCH_MAXFINGERS ; ++j)
                {
                    x->activeFingersID[i][j] = -1;
                }
            }
        
            x->selectedMenuIndex = 0;   // "all tablets"
            // default output scaling : logical (0. to 1. if opaque, pixels if integrated)
            x->a_xyrange = 0;
            
            x->outlet4 = listout ((t_object *) x);
            x->outlet3 = listout ((t_object *) x);
            x->outlet2 = listout ((t_object *) x);
            x->outlet1 = listout ((t_object *) x);
        }
    }
    
	return x;
}


void wacomtouch_assist (t_wacomtouch *x, void *b, long m, long a, char *s)
{
    if (m == ASSIST_INLET)  // inlets
    {
        sprintf (s, "messages");
    }
    else    // outlets
    {
        switch (a)
        {
            case 0:
                sprintf (s, "(list) Fingers data");
                break;
            case 1:
                sprintf (s, "(list) <deviceMenuIndex> <deviceID> <fingerCount>");
                break;
            case 2:
                sprintf (s, "(list) device infos");
                break;
            case 3:
                sprintf (s, "(message) devices enumeration in umenu format");
                break;
            break;
        }
    }
}

//==============================================================================
void wacomtouch_free (t_wacomtouch *x)
{
    int i;
    
    removeAllDevicesFingersListener (x);
    
    for (i = 0 ; i < S2MWACOMTOUCH_MAXINSTANCES ; ++i)
    {
        if (s2mWacomTouchInstances[i] == x)
        {
            s2mWacomTouchInstances[i] = NULL;
            nbWacomtouchInstances--;
            break;
        }
    }
    
    for ( ; i < S2MWACOMTOUCH_MAXINSTANCES - 1 ; ++i)
    {
        s2mWacomTouchInstances[i] = s2mWacomTouchInstances[i+1];
        s2mWacomTouchInstances[i+1] = NULL;
    }
}


//==============================================================================

#pragma mark -
#pragma mark MAXMESSAGES
#pragma mark -

/**
    Select a particular tablet (and tool) to use.
    This typically comes from the umenu.
    We just set selectedMenuIndex accordingly, and we'll use it when the user
    ask to "poll".
*/
void wacomtouch_int (t_wacomtouch *x, long value)
{
    if (value < 0 || value > nbConnectedDevices)
        error ("invalid device index"); // selectedMenuIndex won't change
    else
        x->selectedMenuIndex = (int) value;
}


/** Start 'polling' the tablet(s). */
void wacomtouch_poll (t_wacomtouch *x)
{
    if (x->selectedMenuIndex == 0) // "all tablets" are selected
    {
        addAllDevicesFingersListener (x);
    }
    else
    {
        WacomDevice *device = getDeviceFromID (getDeviceID (x->selectedMenuIndex));
        
        if (device != NULL)
            addDeviceFingersListener (x, device);
    }
}


/** Stop 'polling' the tablet(s). */
void wacomtouch_nopoll (t_wacomtouch *x)
{
    if (x->selectedMenuIndex == 0) // "all tablets" are selected
    {
        removeAllDevicesFingersListener (x);
    }
    else
    {
        WacomDevice *device = getDeviceFromID (getDeviceID (x->selectedMenuIndex));
        
        if (device != NULL)
            removeDeviceFingersListener (x, device);
    }
}

/** Rebuild the umenu connected to the last outlet. */
void wacomtouch_menu (t_wacomtouch *x)
{
    int i;
	t_atom at[2];
	char str[16];
    t_symbol *appendsym = gensym ("append");
    WacomDevice *device;

    outlet_anything (x->outlet4, gensym ("clear"), 0, NULL);
    
    atom_setsym (at, gensym ("All tablets"));
    
    outlet_anything (x->outlet4, appendsym, 1, at);
    
    for (i = 0 ; i < nbConnectedDevices ; ++i)
    {    
        const int deviceID = connectedDevicesIDs[i];
        sprintf (str, "tablet ID %i ", deviceID);
        atom_setsym (at, gensym (str));
        outlet_anything (x->outlet4, appendsym, 1, at);
        
        device = getDeviceFromID (deviceID);
        
        if (device != NULL)
        {
            atom_setlong (at, i + 1);
            atom_setlong (at+1, hasFingerListener (device, x));
            outlet_anything (x->outlet4, gensym ("checkitem"), 2, at);
            
            atom_setlong (&at[0], getMenuIndexFromID (deviceID));
            atom_setlong (&at[1], device->connected ? 1 : 0);
            outlet_anything (x->outlet4, gensym ("enableitem"), 2, at);
        }
    }
}

/** Print information about the selected tablet. */
void wacomtouch_getinfo (t_wacomtouch *x)
{
    int i;
    
    if (nbConnectedDevices != 0)
    {   
        if (x->selectedMenuIndex != 0) // one device selected
        {
            WacomDevice *wacomDevice = getDeviceFromMenuIndex (x->selectedMenuIndex);
            
            if (wacomDevice != NULL)
                outputCapabilities (x, &(wacomDevice->capabilities));
        }
        else // 'all tables' selected - print infos of all connected devices
        {
            for (i = 1 ; i <= nbConnectedDevices ; ++i)
            {
                WacomDevice *wacomDevice = getDeviceFromMenuIndex (i);
               
                 if (wacomDevice != NULL)
                    outputCapabilities (x, &(wacomDevice->capabilities));
            }
        }
    }
}


/** Build the umenu after instantiation. */
void wacomtouch_loadbang (t_wacomtouch *x)
{
    wacomtouch_menu (x);
}


//==============================================================================

#pragma mark -
#pragma mark ATTRIBUTES
#pragma mark -

t_max_err wacomtouch_xyrange_get (t_wacomtouch *x, void *attr, long *ac, t_atom **av)
{
	if (ac && av)
    {
		char alloc;
		
		if (atom_alloc (ac, av, &alloc))
        {
			return MAX_ERR_GENERIC;
		}
		atom_setlong (*av, x->a_xyrange);
	}
	return MAX_ERR_NONE;
}

t_max_err wacomtouch_xyrange_set (t_wacomtouch *x, void *attr, long ac, t_atom *av)
{
	if (ac && av)
    {
        x->a_xyrange = CLAMP (atom_getlong (av), 0, 3);
	}
	return MAX_ERR_NONE;
}

t_max_err wacomtouch_observer_get (t_wacomtouch *x, void *attr, long *ac, t_atom **av)
{
	if (ac && av)
    {
		char alloc;
		
		if (atom_alloc (ac, av, &alloc))
        {
			return MAX_ERR_GENERIC;
		}
		atom_setlong (*av, a_observer);
	}
	return MAX_ERR_NONE;
}

t_max_err wacomtouch_observer_set (t_wacomtouch *x, void *attr, long ac, t_atom *av)
{
    int i;
    
	if (ac && av)
    {
		const long observerMode = CLAMP (atom_getlong (av), 0, 1);
        
        if (a_observer == observerMode)
            return MAX_ERR_NONE;
        
        a_observer = observerMode;
        
        for (i = 0 ; i < nbConnectedDevices ; ++i)
        {
            // register the finger callback for that device.
            WacomMTError err;
            const int deviceID = connectedDevicesIDs[i];
            
            
            if (a_observer == 0)
            {
                err = WacomMTRegisterFingerReadCallback (deviceID, NULL, WMTProcessingModeObserver, NULL, NULL);
                err = WacomMTRegisterFingerReadCallback (deviceID, NULL, WMTProcessingModeNone, s2mFingerCallback, NULL);
            }
            else
            {
                err = WacomMTRegisterFingerReadCallback (deviceID, NULL, WMTProcessingModeNone, NULL, NULL);
                err = WacomMTRegisterFingerReadCallback (deviceID, NULL, WMTProcessingModeObserver, s2mFingerCallback, NULL);
            }
            
            if (err != WMTErrorSuccess)
                error ("error registering finger callback : %i", err);
        }
    }
	return MAX_ERR_NONE;
}

//==============================================================================

#pragma mark -
#pragma mark UTILS
#pragma mark -

/**
    Return the device corresponding to the given ID.
    If no device is found, NULL is returned.
*/
WacomDevice* getDeviceFromID (int deviceID)
{
    int i;
    for (i = 0 ; i < nbConnectedDevices ; ++i)
    {
        if (connectedDevices[i]->ID == deviceID)
            return connectedDevices[i];
    }
    return NULL;
}

/** 
    Return the deviceID corresponding to the given menuIndex.
    in case menuIndex == 0 ("all tablets" item is selected)
    we return 0.
    in case the menuIndex is out of bounds we return 0;
*/
int getDeviceID (int menuIndex)
{
    if (menuIndex <= 0 || menuIndex > nbConnectedDevices)
        return -1;
    
    return connectedDevicesIDs[menuIndex - 1];
}

/** 
    Return the menuIndex corresponding to the given deviceID.
    if no device with the given deviceID is found, we return 0.
*/
int getMenuIndexFromID (int deviceID)
{
    int i;
    for (i = 0 ; i < nbConnectedDevices ; ++i)
    {
        if (connectedDevicesIDs[i] == deviceID)
            return i + 1;
    }
    return 0;
}

/**
    Return the device corresponding to the given menuIndex.
    in case menuIndex == 0 ("all tablets" item is selected)
    or if no device is found, NULL is returned. 
*/
WacomDevice* getDeviceFromMenuIndex (int menuIndex)
{
    const int devID = getDeviceID (menuIndex);
    
    if (devID == -1)
        return NULL;
    
    return getDeviceFromID (devID);
}

        
/** Return 1 if the given device is currently connected. else return 0. */
int isDeviceConnected (WacomDevice *device)
{
    int i;
    for (i = 0 ; i < nbConnectedDevices ; ++i)
    {
        if (connectedDevices[i] == device)
            return 1;
    }
    return 0;
}

/**
    Return 1 if the device corresponding to the given ID is currently connected.
    else return 0.
 */
int isDeviceIDconnected (int deviceID)
{
    int i;
    for (i = 0 ; i < nbConnectedDevices ; ++i)
    {
        if (connectedDevicesIDs[i] == deviceID)
            return 1;
    }
    return 0;
}

/** Return 1 if the given device is opaque. else return 0. */
int isOpaqueDevice (WacomDevice *device)
{
    return device->capabilities.Type == WMTDeviceTypeOpaque ? 1 : 0;
}

//==============================================================================

#pragma mark -
#pragma mark ACTIONS
#pragma mark -

/** Send out the parameters from the event. */
void outputFingers (t_wacomtouch *x, WacomMTFingerCollection *fingerCollection)
{
    t_atom at[16];
    int fingerCounter = 0;
    const int nbFingers = fingerCollection->FingerCount;
    const int devID = fingerCollection->DeviceID;
    const int menuIndexOfID = getMenuIndexFromID (devID);
    int i;
    
    atom_setlong (at, menuIndexOfID);
    atom_setlong (at+1, devID);
    atom_setlong (at+2, fingerCollection->FingerCount);
    outlet_list (x->outlet2, NULL, 3, at);
    
    WacomDevice *device = getDeviceFromID (fingerCollection->DeviceID);
    WacomMTCapability *capa = &(device->capabilities);
    
    float coordOriginX, coordOriginY, coordScaleFactorX, coordScaleFactorY;
    
    if (x->a_xyrange == 0)      // logical
    {
        coordOriginX      = 0.f;
        coordOriginY      = 0.f;
        coordScaleFactorX = 1.f;
        coordScaleFactorY = 1.f;
    }
    else if (x->a_xyrange == 1) // proportional
    {
        coordOriginX      = capa->LogicalOriginX;
        coordOriginY      = capa->LogicalOriginY;
        coordScaleFactorX = 1.f / (float) capa->LogicalWidth;
        coordScaleFactorY = capa->ReportedSizeY / (capa->ReportedSizeX * capa->LogicalHeight);
    }
    else if (x->a_xyrange == 2)  // physical (mm)
    {
        coordOriginX      = capa->LogicalOriginX;
        coordOriginY      = capa->LogicalOriginY;
        coordScaleFactorX = capa->PhysicalSizeX / capa->LogicalWidth;
        coordScaleFactorY = capa->PhysicalSizeY / capa->LogicalHeight;
    }
    else // if (xyrangeMode == 3)  // 0 - 1
    {
        coordOriginX       = capa->LogicalOriginX;
        coordOriginY       = capa->LogicalOriginY;
        coordScaleFactorX  = 1.f / capa->LogicalWidth;
        coordScaleFactorY  = 1.f / capa->LogicalHeight;
    }
    
    
    for (fingerCounter = 0 ; fingerCounter < nbFingers ; ++fingerCounter)
    {
        WacomMTFinger *finger = &(fingerCollection->Fingers[fingerCounter]);
		
        const int currentFingerID = finger->FingerID;
        
        // wacom bug workaround :
        // the driver sometimes tell us many times that the finger has been
        // added. So we filter that information if we already know that..
        int touchState = (int) finger->TouchState;
        
        if (finger->TouchState == WMTFingerStateDown)
        {
            bool fingerIsKnown = false;
            int *knownFingersIDs = &x->activeFingersID[getMenuIndexFromID (devID)-1][0];
            
            for (i = 0 ; i < S2MWACOMTOUCH_MAXFINGERS ; ++i)
            {
                if (knownFingersIDs[i] == currentFingerID)
                {
                    fingerIsKnown = true;
                    touchState = (int) WMTFingerStateHold;
                    break;
                }
            }
            
            if (! fingerIsKnown)
            {
                for (i = 0 ; i < S2MWACOMTOUCH_MAXFINGERS ; ++i)
                {
                    if (knownFingersIDs[i] == -1)
                    {
                        knownFingersIDs[i] = currentFingerID;
                        break;
                    }
                }
            }
                
        }
        else if (finger->TouchState == WMTFingerStateUp)
        {
            int *knownFingersIDs = &x->activeFingersID[getMenuIndexFromID (devID)-1][0];
            
            for (i = 0 ; i < S2MWACOMTOUCH_MAXFINGERS ; ++i)
            {
                if (knownFingersIDs[i] == currentFingerID)
                {
                    knownFingersIDs[i] = -1;
                    break;
                }
            }
        }
        
        atom_setlong  (at,   currentFingerID);
        atom_setlong  (at+1, touchState);
        atom_setfloat (at+2, coordScaleFactorX * (finger->X - coordOriginX));
        atom_setfloat (at+3, coordScaleFactorY * (finger->Y - coordOriginY));
        atom_setfloat (at+4, coordScaleFactorX * finger->Width);
        atom_setfloat (at+5, coordScaleFactorY * finger->Height);
        atom_setlong  (at+6, finger->Sensitivity);
        atom_setfloat (at+7, finger->Orientation);
        atom_setlong  (at+8, ((finger->Confidence) ? 1 : 0));
        
        outlet_list (x->outlet1, NULL, 9, at);
    }
    
    if (nbFingers == 1)
    {
        // we update the finger count to 0 if the only finger is lifted
        
        if (fingerCollection->Fingers[0].TouchState == WMTFingerStateUp)
        {
            atom_setlong (at, menuIndexOfID);
            atom_setlong (at+1, devID);
            atom_setlong (at+2, 0);
            outlet_list (x->outlet2, NULL, 3, at);
        }
    } 
}

void outputCapabilities (t_wacomtouch *x, WacomMTCapability *tabCapa)
{
    t_atom at[2];

    if (tabCapa != NULL)
    {     
        atom_setsym (at, gensym ("version"));
        atom_setlong (at+1, tabCapa->Version);
        outlet_list (x->outlet3, NULL, 2, at);
        
        atom_setsym (at, gensym ("deviceID"));
        atom_setlong (at+1, tabCapa->DeviceID);
        outlet_list (x->outlet3, NULL, 2, at);
        
        atom_setsym (at, gensym ("type"));
        atom_setlong (at+1, tabCapa->Type);
        outlet_list (x->outlet3, NULL, 2, at);
        
        atom_setsym (at, gensym ("logicalOriginX"));
        atom_setfloat (at+1, tabCapa->LogicalOriginX);
        outlet_list (x->outlet3, NULL, 2, at);
        
        atom_setsym (at, gensym ("logicalOriginY"));
        atom_setfloat (at+1, tabCapa->LogicalOriginY);
        outlet_list (x->outlet3, NULL, 2, at);
        
        atom_setsym (at, gensym ("logicalWidth"));
        atom_setfloat (at+1, tabCapa->LogicalWidth);
        outlet_list (x->outlet3, NULL, 2, at);
        
        atom_setsym (at, gensym ("logicalHeight"));
        atom_setfloat (at+1, tabCapa->LogicalHeight);
        outlet_list (x->outlet3, NULL, 2, at);
        
        atom_setsym (at, gensym ("physicalSizeX"));
        atom_setfloat (at+1, tabCapa->PhysicalSizeX);
        outlet_list (x->outlet3, NULL, 2, at);
        
        atom_setsym (at, gensym ("physicalSizeY"));
        atom_setfloat (at+1, tabCapa->PhysicalSizeY);
        outlet_list (x->outlet3, NULL, 2, at);
        
        atom_setsym (at, gensym ("reportedSizeX"));
        atom_setlong (at+1, tabCapa->ReportedSizeX);
        outlet_list (x->outlet3, NULL, 2, at);
        
        atom_setsym (at, gensym ("reportedSizeY"));
        atom_setlong (at+1, tabCapa->ReportedSizeY);
        outlet_list (x->outlet3, NULL, 2, at);
        
        atom_setsym (at, gensym ("scanSizeX"));
        atom_setlong (at+1, tabCapa->ScanSizeX);
        outlet_list (x->outlet3, NULL, 2, at);
        
        atom_setsym (at, gensym ("scanSizeY"));
        atom_setlong (at+1, tabCapa->ScanSizeY);
        outlet_list (x->outlet3, NULL, 2, at);
        
        atom_setsym (at, gensym ("fingerMax"));
        atom_setlong (at+1, tabCapa->FingerMax);
        outlet_list (x->outlet3, NULL, 2, at);
        
        atom_setsym (at, gensym ("blobMax"));
        atom_setlong (at+1, tabCapa->BlobMax);
        outlet_list (x->outlet3, NULL, 2, at);
        
        atom_setsym (at, gensym ("blobPointsMax"));
        atom_setlong (at+1, tabCapa->BlobPointsMax);
        outlet_list (x->outlet3, NULL, 2, at);
        
        atom_setsym (at, gensym ("capabilityFlags"));
        atom_setlong (at+1, tabCapa->CapabilityFlags);
        outlet_list (x->outlet3, NULL, 2, at);
    }
}

//==============================================================================

#pragma mark -
#pragma mark LISTENNERS
#pragma mark -

/**
  Add/remove this instance as a listener of all the connected devices.
  
  only one callback can be registered per device (see api doc).
  So we globally register a callback, and then add/remove each s2m.wacomtouch
  instance as "listener" to the devices.
 */
void addAllDevicesFingersListener (t_wacomtouch *x)
{
    int i;
    for (i = 0 ; i < nbConnectedDevices ; ++i)
        addDeviceFingersListener (x, connectedDevices[i]);
}

void removeAllDevicesFingersListener (t_wacomtouch *x)
{
    int i;
    for (i = 0 ; i < nbConnectedDevices ; ++i)
        removeDeviceFingersListener (x, connectedDevices[i]);
}

/**
 Add/remove this instance as a listener of specified devices.
 
 only one callback can be registered per device (see api doc).
 So we globally register a callback, and then add/remove each s2m.wacomtouch
 instance as "listener" to the devices.
 */
void addDeviceFingersListener (t_wacomtouch *x, WacomDevice* device)
{
    int i;
    t_atom at[2];
    
    if (device != NULL && ! hasFingerListener (device, x))
    {
        t_wacomtouch **selectedDeviceListeners = device->fingersListeners;
        
        // set this s2m.wacomtouch instance as a listener of that tablet
        for (i = 0 ; i < S2MWACOMTOUCH_MAXINSTANCES ; ++i)
        {
            if (selectedDeviceListeners[i] == NULL)
            {
                selectedDeviceListeners[i] = x;
                device->nbFingersListeners++;
                break;
            }
        }
        
        atom_setlong (at, getMenuIndexFromID (device->ID));
        atom_setlong (at+1, 1);
        outlet_anything (x->outlet4, gensym ("checkitem"), 2, at);
    }
}

void removeDeviceFingersListener (t_wacomtouch *x, WacomDevice* device)
{
    int i;
    t_atom at[2];
    
    if (device != NULL && hasFingerListener (device, x))
    {
        t_wacomtouch **selectedDeviceListeners = device->fingersListeners;

        for (i = 0 ; i < device->nbFingersListeners ; ++i)
        {
            if ( selectedDeviceListeners[i] == x)
            {
                selectedDeviceListeners[i] = NULL;
                break;
            }
        }
        for ( ; i < device->nbFingersListeners - 1 ; ++i)
        {
            selectedDeviceListeners[i] = selectedDeviceListeners[i+1];
            selectedDeviceListeners[i+1] = NULL;
        }
        
        device->nbFingersListeners--;
        
        atom_setlong (at, getMenuIndexFromID (device->ID));
        atom_setlong (at+1, 0);
        outlet_anything (x->outlet4, gensym ("checkitem"), 2, at);
    }
}

//==============================================================================

#pragma mark -
#pragma mark CALLBACKS
#pragma mark -

/** Register this class with the Wacom touch API. */
static void registerWacomCallbacks (void)
{
    if (isTouchAPIConnected)
    {
        // Listen for device connect/disconnect
        // Note that the attach callback will be called for each connected device
        // immediately after the callback is registered.
        WacomMTRegisterAttachCallback (s2mAttachCallback, NULL);
        WacomMTRegisterDetachCallback (s2mDetachCallback, NULL);
    }
}


/*  A device has been attached. */
void deviceAttached (t_wacomtouch *x, WacomDevice* device)
{
    wacomtouch_menu (x); // update the umenu
}

/* A device has been dettached. */
void deviceDettached (t_wacomtouch *x, WacomDevice* device)
{
    // update the umenu :
    t_atom at[2];
    atom_setlong (&at[0], getMenuIndexFromID (device->ID));
    atom_setlong (&at[1], 0);
    outlet_anything (x->outlet4, gensym ("enableitem"), 2, at);
    outlet_bang (x->outlet4);
}

//==============================================================================
#pragma mark -
#pragma mark WACOM TOUCH API C-FUNCTION CALLBACKS
#pragma mark -

/** A new device was connected. */
void s2mAttachCallback (WacomMTCapability deviceInfo, void *userInfo)
{
    int i;
    
    WacomDevice *wacomDevice;
    const int deviceID = deviceInfo.DeviceID;
    
    if (nbConnectedDevices >= S2MWACOMTOUCH_MAXDEVICES)
    {
        error ("no more than %i devices can be connected at the same time", S2MWACOMTOUCH_MAXDEVICES);
        return;
    }
    
    // register the finger callback for that device.
    WacomMTError err;
    
    if (a_observer == 0)
    {
        err = WacomMTRegisterFingerReadCallback (deviceID, NULL, WMTProcessingModeNone, s2mFingerCallback, NULL);
    }
    else
    {
        err = WacomMTRegisterFingerReadCallback (deviceID, NULL, WMTProcessingModeObserver, s2mFingerCallback, NULL);
    }
    
    if (err != WMTErrorSuccess)
    {
        error ("s2m.wacomtouch - error registering : %i", err);
        return;
    }

    if (! isDeviceIDconnected (deviceID))
    {
        connectedDevicesIDs[nbConnectedDevices] = deviceID;
    
        wacomDevice = (WacomDevice*) malloc (sizeof (WacomDevice));
        wacomDevice->ID = deviceID;
        wacomDevice->connected = true;
        WacomMTCapability *capabilities = &wacomDevice->capabilities;
        WacomMTGetDeviceCapabilities (deviceID, capabilities);
        wacomDevice->nbFingersListeners = 0;
        
        for (i = 0 ; i < S2MWACOMTOUCH_MAXINSTANCES ; ++i)
        {
            wacomDevice->fingersListeners[i] = NULL;
        }
        
        connectedDevices[nbConnectedDevices] = wacomDevice;
        ++nbConnectedDevices;
    }
    else
    {
        wacomDevice = getDeviceFromID (deviceID);
        wacomDevice->connected = true;
    }
    
    // tell all [s2m.wacomtouch] instances
    for (i = 0 ; i < nbWacomtouchInstances ; ++i)
    {
        deviceAttached (s2mWacomTouchInstances[i], wacomDevice);
    }
}


/** A device was unplugged. */
void s2mDetachCallback (int deviceID, void *userInfo)
{
    int i;
    
    WacomDevice *wacomDevice = getDeviceFromID (deviceID);
    wacomDevice->connected = false;
    
    // tell all [s2m.wacomtouch] instances
    for (i = 0 ; i < nbWacomtouchInstances ; ++i)
    {
        deviceDettached (s2mWacomTouchInstances[i], wacomDevice);
    }
    
    WacomMTRegisterFingerReadCallback (deviceID, NULL, WMTProcessingModeNone, NULL, NULL);
    WacomMTRegisterFingerReadCallback (deviceID, NULL, WMTProcessingModeObserver, NULL, NULL);
}


/** Fingers are moving on one of the connected devices.
    
    You should not spend too long responding to touch messages. The touch API 
	will automatically and silently purge hung applications, requiring a 
	re-registration.
    maybe we should make a copy and trigger it from another thread...
 */
int s2mFingerCallback (WacomMTFingerCollection *fingerPacket, void *userInfo)
{
    int i;
    WacomDevice *device = getDeviceFromID (fingerPacket->DeviceID);
    
    if (device != NULL)
    {
        t_wacomtouch **devListeners = device->fingersListeners;
        
        for (i = 0 ; i < device->nbFingersListeners ; ++i)
        {
            outputFingers (devListeners[i], fingerPacket);
        }
    }
	return WMTErrorSuccess;
}

//==============================================================================
