class Tank {
  float x;
  float y;
  int posXLife;
  int posYLife;
  int startPosX;
  int playerNum;
  int life = 3;
  int taille = 32;
  int deplacementXr, deplacementXl;
  int deplacementYu, deplacementYd;
  boolean collisionr = false, collisionl = false, collisionu = false, collisiond = false;
  int spritep = 4;

  Tank (float newX, float newY, int newPosXLife, int newPosYLife, int newPlayerNum) { //contructeur du tank
    x = newX;
    y = newY;
    posXLife = newPosXLife;
    startPosX = newPosXLife;
    posYLife = newPosYLife;
    playerNum = newPlayerNum;
  }
  void display() { // affichage du tank en fonction de son orientation
    if (playerNum == 1) {
      if (spritep == 1) {
        image(moveU1, x-1, y-1);
      }
      if (spritep == 2) {
        image(moveD1, x-1, y-1);
      }
      if (spritep == 3) {
        image(moveL1, x-1, y-1);
      }
      if (spritep == 4) {
        image(moveR1, x-1, y-1);
      }
      if (spritep == 5){
        image(moveUR1, x-1, y-1);
      }
      if (spritep == 6){
        image(moveUL1, x-1, y-1);
      }
      if (spritep == 7){
        image(moveDR1, x-1, y-1);
      }
      if (spritep == 8){
        image(moveDL1, x-1, y-1);
      }
    } else if (playerNum == 2) {
      if (spritep == 1) {
        image(moveU2, x-1, y-1);
      }
      if (spritep == 2) {
        image(moveD2, x-1, y-1);
      }
      if (spritep == 3) {
        image(moveL2, x-1, y-1);
      }
      if (spritep == 4) {
        image(moveR2, x-1, y-1);
      }
      if (spritep == 5){
        image(moveUR2, x-1, y-1);
      }
      if (spritep == 6){
        image(moveUL2, x-1, y-1);
      }
      if (spritep == 7){
        image(moveDR2, x-1, y-1);
      }
      if (spritep == 8){
        image(moveDL2, x-1, y-1);
      }
    }
    for (int i = 0; i < life; i++) {
      image(lifeFull, posXLife, posYLife);
      posXLife += 34;
    }
    posXLife = startPosX;
  }
  void move() { //déplacement du tank
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
  void collision(float otherX, float otherY) { //collision du tank avec l'autre tank
    if (x+taille >= otherX && y+taille >= otherY+1  && y <= (otherY +taille-1) && x+taille-1 <= otherX) {
      collisionl = true;
    } else {
      collisionl = false;
    }
    if (y+taille >= otherY && x+taille >= otherX+1 && x <= (otherX+taille-1) && y+taille-1 <= otherY) {
      collisionu = true;
    } else {
      collisionu = false;
    }
    if (y <= otherY+taille && x+taille >= otherX+1 && x <= (otherX+taille-1) && y+1 >= otherY+taille) {
      collisiond = true;
    } else {
      collisiond = false;
    }
    if (x <= otherX+taille && y+taille >= otherY+1 && y <= (otherY+taille-1) && x+1 >= otherX+taille) {
      collisionr = true;
    } else {
      collisionr = false;
    }
  }
  void collisionMur(float murX, float murY) { //collision du tank avec les murs
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
