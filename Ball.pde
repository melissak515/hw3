class Ball {
  float x,y;
  float vx,vy;
  float radius;
  color c;

  Ball(color c1) {
    x = random(width);
    y = random(height);
    radius = 20;
    vx = random(7);
    vy = random(5);
    c = c1;
    }

  void draw() {
    fill(c);
    ellipse(x,y,radius*2,radius*2);
    
    println(c);
  }

  void step() {
    x = x + vx;
    y = y + vy;
    if (x < radius || x > width-radius) {
    vx = -vx;
    }
    if (y < radius || y > height-radius) {
      vy = -vy;
    }
  }
}

Ball b, b2;
void setup() {
  size(500,500);
  noStroke();
  smooth();
  colorMode(HSB,100);
  b = new Ball(color(random(100),100,100));
  b2 = new Ball(color(random(100),100,100));
}
void draw() {
  background(100);

  b.draw();
  b.step();
  b2.draw();
  b2.step();

  if (mousePressed==true) {
    b.x = mouseX;
    b.y = mouseY;
    b2.x = mouseX;
    b2.y = mouseY;
  }
}

void mouseReleased() {
  if (b.c <100) {
    b.c = color(random(100),100,100);
  } 
  if (b2.c <100) {
    b2.c = color(random(100),100,100);
  }
}
