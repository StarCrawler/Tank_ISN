PImage tank;
float counter;



void setup() {
  size(100, 100);
  background(255);
  counter=0.0;
  tank=loadImage("tankPlayer2.png");
  frameRate(5);
}

void draw() {
  background(255,255,255,50);
  counter++;
  translate(width/2-tank.width/2, height/2-tank.height/2);
  rotate(counter*TWO_PI/8);
  // rect(-26, -26, 52, 52);
  image(tank, -16, -16);
  save("tnk"+counter+".png");
}
