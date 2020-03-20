class Tir {
  float x;
  float y;
  color colour;
  int orientation;
  Tir(float newX, float newY, color newColor, int newOrientation) {
    x = newX;
    y = newY;
    colour = newColor;
    orientation = newOrientation;
  }

  void display() {
    noStroke();
    fill(colour);
    ellipse(x, y, 10, 10);
  }

  void update() {
    if (orientation == 1) {
      y = y-3;
    }
    if (orientation == 2) {
      y = y+3;
    }
    if (orientation == 3) {
      x = x-3;
    }
    if (orientation == 4) {
      x = x+3;
    }
  }

  boolean terminate(float Xtank, float Ytank) {
    if (x+10 >= 1000 || x-10 <= 0 || y+10 >= 750 || y-10 <= 0) {
      return true;
    }
    if ((x+10 >= Xtank && y-10 >= Ytank-20 && y+10 <= Ytank+52 && x+10 <= Xtank+3) || (x-10 <= Xtank+32 && y-10 >= Ytank-20 && y+10 <= Ytank+52 && x-10 >= Xtank+49) ||
      (y+10 >= Ytank && x-10 >= Xtank-20 && x+10 <= Xtank+52 && y+10 <= Ytank+3) || (y-10 <= Ytank+32 && x-10 >= Xtank -20 && x+10 <= Xtank+52 && y-10 >= Ytank+49)) {
      return true;
    } else {
      return false;
    }
  }
}
