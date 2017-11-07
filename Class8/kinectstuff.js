outlets = 2;

var which;
var thestuff = new JitterMatrix(3, "float32", 15);
var lefthand = new Array(3);
var righthand = new Array(3);

function joint()
{
	if(arguments[0]=="head") which = 0;
	if(arguments[0]=="neck") which = 1;
	if(arguments[0]=="torso") which = 2;
	if(arguments[0]=="l_shoulder") which = 3;
	if(arguments[0]=="l_elbow") which = 4;
	if(arguments[0]=="l_hand") {
		which = 5;
		lefthand[0] = arguments[2];
		lefthand[1] = arguments[3];
		lefthand[2] = arguments[4];
	}
	if(arguments[0]=="r_shoulder") which = 6;
	if(arguments[0]=="r_elbow") which = 7;
	if(arguments[0]=="r_hand") {
		which = 8;
		righthand[0] = arguments[2];
		righthand[1] = arguments[3];
		righthand[2] = arguments[4];
	}
	if(arguments[0]=="l_hip") which = 9;
	if(arguments[0]=="l_knee") which = 10;
	if(arguments[0]=="l_foot") which = 11;
	if(arguments[0]=="r_hip") which = 12;
	if(arguments[0]=="r_knee") which = 13;
	if(arguments[0]=="r_foot") which = 14;
	thestuff.setcell1d(which, ((arguments[2]*2.)-1.)*-1., (1.0-arguments[3]), ((arguments[4]-1.)*2.-1.)*-1.);

}

function bang()
{
	outlet(0, "jit_matrix", thestuff.name);
	
	var dist = 0;
	dist += (righthand[0]-lefthand[0])*(righthand[0]-lefthand[0]);
	dist += (righthand[1]-lefthand[1])*(righthand[1]-lefthand[1]);
	dist += (righthand[2]-lefthand[2])*(righthand[2]-lefthand[2]);
	dist = Math.sqrt(dist);
	outlet(1, dist);
	
	

}