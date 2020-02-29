Tank tank1 = new Tank(150, 150, #e81f10);

PImage tir;
PImage moveL, moveR, moveU, moveD;



void setup() {
  size(300, 300);
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
}

void keyPressed() {
  if (key == 'e') {
    Tir tir1 = new Tir(100, 100, tir);
    tir1.display();
  }
  if (key == 'z') {
    tank1.spritep = 1;
  }
  if (key == 's') {
    tank1.spritep = 2;
  }
  if (key == 'q') {
    tank1.spritep = 3;
  }
  if (key == 'd') {
    tank1.spritep = 4;
  }
}

class Tank {
  float x;
  float y;
  color couleur;
  int deplacementXr, deplacementXl;
  int deplacementYu, deplacementYd;
  boolean collisionr = false, collisionl = false, collisionu = false, collisiond = false;
  int spritep = 4;

  Tank (float newX, float newY, color newCouleur) {
    x = newX;
    y = newY;
    couleur = newCouleur;
  }

  void display() {
    noStroke();
    fill(couleur, 0);
    rect(x, y, 25, 25);
    if (spritep == 1) {
      image(moveU, x, y);
    }
    if (spritep == 2) {
      image(moveD, x, y);
    }
    if (spritep == 3) {
      image(moveL, x, y);
    }
    if (spritep == 4) {
      image(moveR, x, y);
    }
  }

  void move() {
    if (collisionl == false) {
      x = deplacementXr + x;
    }
    if (collisionu == false) {
      y = deplacementYd + y;
    }
    if (collisiond == false) {
      y = deplacementYu + y;
    }
    if (collisionr == false) {
      x = deplacementXl + x;
    }
  }

  void collision(float otherX, float otherY) {
    if (x+25 >= otherX && y+25 >= otherY  && y <= (otherY +25) && x+24 <= otherX) {
      collisionl = true;
    } else {
      collisionl = false;
    }
    if (y+25 >= otherY && x+25 >= otherX && x <= (otherX+25) && y+24 <= otherY) {
      collisionu = true;
    } else {
      collisionu = false;
    }
    if (y <= otherY+25 && x+25 >= otherX && x <= (otherX+25) && y+1 >= otherY+25) {
      collisiond = true;
    } else {
      collisiond = false;
    }
    if (x <= otherX+25 && y+25 >= otherY && y <= (otherY+25) && x+1 >= otherX+25 ) {
      collisionr = true;
    } else {
      collisionr = false;
    }
  }
}

class Tir {
  float x;
  float y;
  PImage tir;
  Tir(float newX, float newY, PImage newtir) {
    x = newX;
    y = newY;
    tir = newtir;
  }

  void display() {
    image(tir, x, y);
  }
}
