Tank tank1 = new Tank(100, 100, #0762eb);
Tank tank2 = new Tank(200, 200, color(0));

PImage moveL, moveR, moveU, moveD, tir;

void setup() {
  size(1000, 750); 
  background(255);
  tir = loadImage("sprite/tir.png");
  moveL = loadImage("sprite/tankL.png");
  moveR = loadImage("sprite/tankR.png");
  moveU = loadImage("sprite/tankU.png");
  moveD = loadImage("sprite/tankD.png");
  moveL.resize(25, 25);
  moveR.resize(25, 25);
  moveU.resize(25, 25);
  moveD.resize(25, 25);
}

void draw() {
  background(255);
  tank1.display();
  tank2.display();
  tank1.collision(tank2.x, tank2.y);
  tank2.collision(tank1.x, tank1.y);
  tank1.move();
  tank2.move();
}

void keyPressed() {
  if (key == 'z') {
    tank1.deplacementYu = -1;
    tank1.spritep = 1;
  }
  if (key == 's') {
    tank1.deplacementYd = 1;
    tank1.spritep = 2;
  }
  if (key == 'q') {
    tank1.deplacementXl = -1;
    tank1.spritep = 3;
  }
  if (key == 'd') {
    tank1.deplacementXr = 1;
    tank1.spritep = 4;
  }
  if (keyCode == UP) {
    tank2.deplacementYu = -1;
    tank2.spritep = 1;
  }
  if (keyCode == DOWN) {
    tank2.deplacementYd = 1;
    tank2.spritep = 2;
  }
  if (keyCode == LEFT) {
    tank2.deplacementXl = -1;
    tank2.spritep = 3;
  }
  if (keyCode == RIGHT) {
    tank2.deplacementXr = 1;
    tank2.spritep = 4;
  }
}
void keyReleased() {
  if (key == 'z') {
    tank1.deplacementYu = 0;
  }
  if (key == 's') {
    tank1.deplacementYd = 0;
  }
  if (key == 'q') {
    tank1.deplacementXl = 0;
  }
  if (key == 'd') {
    tank1.deplacementXr = 0;
  }
  if (keyCode == UP) {
    tank2.deplacementYu = 0;
  }
  if (keyCode == DOWN) {
    tank2.deplacementYd = 0;
  }
  if (keyCode == LEFT) {
    tank2.deplacementXl = 0;
  }
  if (keyCode == RIGHT) {
    tank2.deplacementXr = 0;
  }
}
