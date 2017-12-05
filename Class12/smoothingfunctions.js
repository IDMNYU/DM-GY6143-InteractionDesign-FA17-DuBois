// javascript in max
// ya name yer function the same as the message you wanna send in
// so
//
// function yikes(v)
//
// would respond to the message 'yikes' followed by a value in max
//
//
// to send stuff out
// you say outlet(n, stuff) where n is the outlet number
//

function backIn(_x) {
	var y = _x * _x * _x - _x * Math.sin(_x * Math.PI);
  	outlet(0, y);
}


// parabola y = x^2
function quadraticIn(_x) {
  	outlet(0, _x * _x);
};

// parabola y = -x^2 + 2x
function quadraticOut(_x) {
  	outlet(0, -(_x * (_x - 2)));
};

// piecewise quadratic
// y = (1/2)((2x)^2)             ; [0, 0.5)
// y = -(1/2)((2x-1)*(2x-3) - 1) ; [0.5, 1]
function quadraticInOut(_x) 
{
	if(_x < 0.5)
  	{
  		outlet(0, 2 * _x * _x);
  	}
  	else
  	{
  		outlet(0, (-2 * _x * _x) + (4 * _x) - 1);
  	}
}