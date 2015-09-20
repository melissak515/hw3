int numberOfBars=10;
int hue=0;
int count=0;

void setup() {
  size(500,500);
  noStroke();
  background(0);
  frameRate(10);
  colorMode(HSB,100);
}

void draw() {
  if (numberOfBars < 490) {
    fill(0); 
    rect(numberOfBars,0,5,height);
      fill(hue,100,100);
      rect(numberOfBars,random(height), 5, height); 
    numberOfBars += 20;
  } else {
    numberOfBars = 10;
  }
  count++;
  if (hue<100) {
    hue=hue+1;
  } else {
    hue=0;
  }
  println(hue);
}
