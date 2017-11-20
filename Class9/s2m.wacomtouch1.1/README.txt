bug reports : gondre@lma.cnrs-mrs.fr


If s2m.wacomtouch does not work "out of the box" :


A - check that your tablet supports "touch point data". see :
    http://www.wacomeng.com/touch/WacomFeelMulti-TouchFAQ.htm#_Toc331140757

B - be sure you installed the appropriate driver from wacom
    (see the "First driver version for touch data support" in the last column
    of that table : http://www.wacomeng.com/touch/WacomFeelMulti-TouchFAQ.htm#_Toc331140757 )

C - be sure the tablet is plugged directly to the computer and
    not throught the keyboard neither a usb hub.

D - on mac OSX, some users that had several wacom drivers installed did not have the touch
   fonctionnality properly working at first. Others reported issues after upgrading their wacom's drivers.

   A proper clean and reinstallation of the wacom drivers should fix everything.
   Note that the last driver version is not always the best choice, as sometimes they introduce new bugs… *

   Here is the procedure to clean and reinstall the drivers :

   - disconnect all the tablets from your mac.

   - remove all installed drivers by running the following apps (they may have slightly different names,
     as for me the names are in french. and you may not have all those applications, as it depends which
     drivers you previouslly installed in the past) :

        - run "/Applications/bamboo/bamboo utility.app" .
        - remove the preferences : check "All users" and click "remove"
        - and the software : click "remove" in the "Tablet software" section.

        - run "/Applications/wacom tablet/tablet utility.app"  (in french its Applications/tablettes wacom/)
        - remove the preferences : check "All users" and click "remove"
        - and the software : click "remove" in the "Tablet software" section.

        - run "/Applications/wacom utilities/tablet utility.app" (in french its Applications/Utilitaire Wacom/)
        - remove the preferences : check "All users" and click "remove"
        - and the software : click "remove" in the "Tablet software" section.

        - restart your computer.

        - As of june 2014 I advise you to download and intall the following drivers' versions :

	    for cintiq and intuos :
            . pro636-4 for 10.8, 10.7 or 10.6 
            . pro637-3 for 10.9

            for bamboo touch :
            . cons532-2_int


            (if you've got both a cintiq/intuos and a bamboo, install the cintiq/intuos' driver
            before the bamboo's one)

        - restart your computer.           

        - launch the s2m.wacom.maxhelp patch and test again.


E - If it still does not work and if you got xcode installed, you can check if the tablet is
    correctly working within your system by trying the following app from wacom :
    http://www.wacomeng.com/touch/MacMulti-Touch_Sample_Code.zip
   
   (uncompress it, open the "MultiTouch.xcodeproj" file with xcode, and click the
   "build and run" button).
   In the app, click "initialize", then select you tab which should have appeared,
   and clic "register finger callback".
   In the newly opened window, you should see your fingers while you're moving them
   on the tablet, if not, be sure you followed the steps described above (D).
   But if this app works properly, then s2m.wacomtouch should work too!


//=====================================================================================

* for instance version pro638-2 broke the "nopointer" functionality.


// last update of this document : june 2014
