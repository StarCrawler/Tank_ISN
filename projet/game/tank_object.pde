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
