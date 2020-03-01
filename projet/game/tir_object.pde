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
