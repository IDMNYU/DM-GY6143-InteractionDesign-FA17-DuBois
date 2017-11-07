// a node js server to serve up some web crap
// and connect to a myo armband and 
// stream data to any connected web browsers

//
// NETWORK SHIT
//

// set up a basic webserver serving whatever
// on port 8080:
var foo = require('./lukeserver.js');
var server = foo.startServer(8080);
foo.debugServer(false); // don't print too much shit out

// socket.io stuff.  set up a socket server
// for anyone who connects:
var io = require('socket.io')(server);

// this runs when a browser connect's on the
// socket.io socket:
io.on('connection', function (socket) {
	console.log('socket connection!!!');
});


//
// MYO SHIT
//

var Myo = require('myo'); // this is the node object

// this is where i'm stashing the current data
// from the myo:
var currentstuff = {};

// start talking with myo connect
Myo.connect('com.stolksdorf.myAwesomeApp'); // ???

// this is the callback when a connection happens:
Myo.on('connected', function(){
  // console.log('connected!', this.id);
  this.vibrate(); // FUN!
  this.streamEMG(true); // STREAM!!!!
  console.log('connected to ' + Myo.myos[0].name);
});

// this is the emg callback.
// emg data is zippier than imu data,
// so use this one to actually send the 
// crap to the web clients:
Myo.on('emg', function(data) {
	//console.log(data);
	currentstuff.emg = data; // add emg property to 'currentstuff'
	io.emit('stuff', currentstuff); // send it over the socket
	//console.log(currentstuff);
});

// this is the imu callback.
// slower than emg; just use it to blow out
// the 'currentstuff' data with new crap.
Myo.on('imu', function(data) {
	currentstuff = data;
});

Myo.on('fist', function(){
    console.log('Hello Myo!');
    this.vibrate();
});