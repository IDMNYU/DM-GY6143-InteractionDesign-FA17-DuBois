
var thestuff;
var ts = 18; // luke is blind

function setup(){
  createCanvas(800, 600);

  // client-side socket.io:
  socket = io();

  socket.on('stuff', function(data) {
    // copy the shit coming in from the socket:
    thestuff = data;
  });

}

function draw()
{
  background(0);
  textSize(ts);
  
  fill(255, 0, 255);
  text("Caitlin's MYO", width*(2/3), height*(2/3));
  
  // make sure we have data before we use it:
  if(thestuff!=undefined) {
    drawtext();
    drawgraph();
  }   
}

function drawtext()
{
  fill(255);
  noStroke();
  var ty = 0;
  text("orientation: ", 50, ty+=ts);
  text("    w: " + thestuff.orientation.w, 50, ty+=ts);
  text("    x: " + thestuff.orientation.x, 50, ty+=ts);
  text("    y: " + thestuff.orientation.y, 50, ty+=ts);
  text("    z: " + thestuff.orientation.z, 50, ty+=ts);

  text("gyroscope: ", 50, ty+=ts);
  text("    x: " + thestuff.gyroscope.x, 50, ty+=ts);
  text("    y: " + thestuff.gyroscope.y, 50, ty+=ts);
  text("    z: " + thestuff.gyroscope.z, 50, ty+=ts);

  text("accelerometer: ", 50, ty+=ts);
  text("    x: " + thestuff.accelerometer.x, 50, ty+=ts);
  text("    y: " + thestuff.accelerometer.y, 50, ty+=ts);
  text("    z: " + thestuff.accelerometer.z, 50, ty+=ts);

  text("emg: ", 50, ty+=ts);
  ty+=ts;
  for(var i = 0;i<thestuff.emg.length;i++)
  {
    text(thestuff.emg[i], 50+textWidth("    ")+(i*ts*2), ty); 
  }

}

function drawgraph()
{
  var xp;
  noFill();
  stroke(255);
  
  // nice friendly line down the center:
  line(width/2, 0, width/2, height);

  var ty = 0;

  ty+=ts/2;
  xp = map(thestuff.orientation.w, -1., 1., width/2, width);
  ellipse(xp, ty+=ts, ts, ts);
  line(width/2, ty, width, ty);
  xp = map(thestuff.orientation.x, -1., 1., width/2, width);
  ellipse(xp, ty+=ts, ts, ts);
  line(width/2, ty, width, ty);
  xp = map(thestuff.orientation.y, -1., 1., width/2, width);
  ellipse(xp, ty+=ts, ts, ts);
  line(width/2, ty, width, ty);
  xp = map(thestuff.orientation.z, -1., 1., width/2, width);
  ellipse(xp, ty+=ts, ts, ts);
  line(width/2, ty, width, ty);

  ty+=ts;
  xp = map(thestuff.gyroscope.x, -360., 360., width/2, width);
  ellipse(xp, ty+=ts, ts, ts);
  line(width/2, ty, width, ty);
  xp = map(thestuff.gyroscope.y, -360., 360., width/2, width);
  ellipse(xp, ty+=ts, ts, ts);
  line(width/2, ty, width, ty);
  xp = map(thestuff.gyroscope.z, -360., 360., width/2, width);
  ellipse(xp, ty+=ts, ts, ts);
  line(width/2, ty, width, ty);

  ty+=ts;
  xp = map(thestuff.accelerometer.x, -1., 1., width/2, width);
  ellipse(xp, ty+=ts, ts, ts);
  line(width/2, ty, width, ty);
  xp = map(thestuff.accelerometer.y, -1., 1., width/2, width);
  ellipse(xp, ty+=ts, ts, ts);
  line(width/2, ty, width, ty);
  xp = map(thestuff.accelerometer.z, -1., 1., width/2, width);
  ellipse(xp, ty+=ts, ts, ts);
  line(width/2, ty, width, ty);

  ty+=ts;
  ty+=ts;
  ty+=ts;
  for(var i = 0;i<thestuff.emg.length;i++)
  {
    xp = map(thestuff.emg[i], -100, 100, 0, 250);
    ellipse(50+textWidth("    ")+(i*ts*2), ty+xp, ts, ts);
    line(50+textWidth("    ")+(i*ts*2), ty, 50+textWidth("    ")+(i*ts*2), ty+250);    
  }

}
