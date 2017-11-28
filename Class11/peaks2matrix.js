// find the n loudest bits

var n = 3;

var thedata = [];

function peaks(_i, _f, _a)
{
	var idx = _i-1; // starts counting at 0
	thedata[idx] = { freq: _f, amp: _a };
	if(_i == 10) compute();
}

function compute()
{
	thedata.sort(function(a, b) {
			return(b.amp-a.amp);
		});
	for(var i = 0;i<n;i++)
	{
		outlet(0, i, thedata[i].freq, thedata[i].amp);
	}
}