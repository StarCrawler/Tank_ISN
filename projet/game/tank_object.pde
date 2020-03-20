class Tank {
  float x;
  float y;
  int taille = 32;
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
      image(moveU, x-1, y-1);
    }
    if (spritep == 2) {
      image(moveD, x-1, y-1);
    }
    if (spritep == 3) {
      image(moveL, x-1, y-1);
    }
    if (spritep == 4) {
      image(moveR, x-1, y-1);
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
    if (x+taille >= otherX && y+taille >= otherY  && y <= (otherY +taille) && x+taille-1 <= otherX) {
      collisionl = true;
    } else {
      collisionl = false;
    }
    if (y+taille >= otherY && x+taille >= otherX && x <= (otherX+taille) && y+taille-1 <= otherY) {
      collisionu = true;
    } else {
      collisionu = false;
    }
    if (y <= otherY+taille && x+taille >= otherX && x <= (otherX+taille) && y+1 >= otherY+taille) {
      collisiond = true;
    } else {
      collisiond = false;
    }
    if (x <= otherX+taille && y+taille >= otherY && y <= (otherY+taille) && x+1 >= otherX+taille) {
      collisionr = true;
    } else {
      collisionr = false;
    }
  }
  void collisionMur(float murX, float murY) {
    if (murY+33 == y && x+32 >= murX && x <= murX+32) {
      collisiond = true;
    }
    if (murY == y+33 && x+32 >= murX && x <= murX+32) {
      collisionu = true;
    }
    if (murX+33 == x && y+32 >= murY && y <= murY+32) {
      collisionr = true;
    }
    if (murX == x+33 && y+32 >= murY && y <= murY+32) {
      collisionl = true;
    }
  }
}
