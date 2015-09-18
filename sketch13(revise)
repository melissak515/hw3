//the two balls are no longer linked by x axis or y axis

float x = 100;
float y = 450;
float z = 213;
float xspeed = 3;
float yspeed = 4;
float zspeed = 2.5;

void setup() {
  size(500,500);
  smooth();
  background(255);
}

void draw() {
  noStroke();
  fill(255);
  rect(0,0,width,height);
  
  // Add the current speed to the location.
  x = x + xspeed;
  y = y + yspeed;
  z = z - zspeed;

  // Check for bouncing
  if ((x+23 > width) || (x < 23)) {
    xspeed = xspeed * -1;
  }
  if ((x-23 < 0)) {
    xspeed = xspeed * 1;
  }
  if ((y+23 > height) || (y < 23)) {
    yspeed = yspeed * -1;
  }
  if ((y+23 < width)) {
    yspeed = yspeed * 1;
  }
  if ((z+23 < height)) {
    zspeed = zspeed * 1;
  }
  if ((z+23 > width) || (z < 23)) {
    zspeed = zspeed * -1;
  }

  // Display at x,y location
  noStroke();
  fill(100);
  ellipse(x,y,46,46);
  fill(237,175,0);
  noStroke();
  ellipse(z,x,46,46);
}
