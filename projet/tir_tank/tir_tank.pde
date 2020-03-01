PImage tir;

void setup() {
  size(300, 300);
  tir = loadImage("sprite/tir.png");
}

void draw() {
  background(255);
}

void keyPressed() {
  if (key == 'e') {
    Tir tir1 = new Tir(100, 100, tir);
    tir1.display();
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
