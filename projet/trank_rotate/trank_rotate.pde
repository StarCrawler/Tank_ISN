PImage tank;
float counter;



void setup() {
  size(300, 300);
  background(255);
  counter=0.0;
  tank=loadImage("tank.png");
  tank.resize(50, 50);
  frameRate(5);
}

void draw() {
  background(255,255,255,50);
  counter++;
  translate(width/2-tank.width/2, height/2-tank.height/2);
  rotate(counter*TWO_PI/288);
  // rect(-26, -26, 52, 52);
  image(tank, -25, -25);
  save("tnk"+counter+".png");
}
