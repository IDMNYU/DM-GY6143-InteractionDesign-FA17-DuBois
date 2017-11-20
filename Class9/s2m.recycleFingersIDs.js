//==================================================================//
//
//  file : s2m.recycleFingersID.js
//
//  author : Charles Gondre
//  date : june 2014
//
//  a small js to change the fingers'IDs of s2m.wacomtouch so that
//  they are kept as low as possible (and not ever increasing!)
//  it is used in s2m.wacomtouch.maxhelp
//
//==================================================================//

inlets = 1;
outlets = 1;

//====================================================================

var MAXFINGERS = 64;

var newIndices = new Array();
var usedIndices = new Array (MAXFINGERS);

for (var i = 0; i < MAXFINGERS; ++i)
    usedIndices[i] = 0;

//====================================================================

function list()
{
    var theList = new Array (arguments.length);
	
	for (var i = 0; i < arguments.length; ++i) 
		theList[i] = arguments[i];
    
    var fingerIndex = theList[0];
    var fingerState = theList[1];
    
    if (fingerState == 1) // down
    {
        var freeIndex = usedIndices.indexOf (0);
        usedIndices[freeIndex] = 1;
        newIndices[fingerIndex] = freeIndex;
    }
    else if (fingerState == 3) // up
    {
        usedIndices[newIndices[fingerIndex]] = 0;
    }
    
    theList[0] = newIndices[fingerIndex];
    
    outlet (0, theList);
}
