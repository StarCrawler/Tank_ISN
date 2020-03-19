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
  void collision(float otherX, float otherY, float murX, float murY) {
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
    if (murY+32 >= y && murY+32 <= y+1 && x+32 >= murX && x <= murX+32) {
      collisiond = true;
    }
    if (murY >= y+31 && murY <= y+32 && x+32 >= murX && x <= murX+32) {
      collisionu = true;
    }
    if (murX+32 >= x && murX+32 <= x+1 && y+32 >= murY && y <= murY+32) {
      collisionr = true;
    }
    if (murX >= x+31 && murX <= x+32 && y+32 >= murY && y <= murY+32) {
      collisionl = true;
    }
  }
}
