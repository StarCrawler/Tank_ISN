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

  boolean terminate(float Xtank1, float Ytank1/*, float Xtank2, float Ytank2*/) {
    if (x+10 >= 1000 || x-10 <= 0 || y+10 >= 750 || y-10 <= 0) {
      return true;
    }
    if (x+10 >= Xtank1 && (y-10 >= Ytank1 || y+10 <= Ytank1+25)) {
      return true;
    }else {
      return false;
    }
  }
}
