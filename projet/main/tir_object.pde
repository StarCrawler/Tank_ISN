class Tir {
  float x;
  float y;
  int orientation;
  Tir(float newX, float newY,int newOrientation) {
    x = newX;
    y = newY;
    orientation = newOrientation;
  }

  void display() { //affichage de la balle
    image(tir, x-5, y-5);
  }

  void update() { //déplacement de la balle en fonction de l'orientation de tank
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
    if (orientation == 5){
      y = y-2;
      x = x+2;
    }
    if(orientation == 6){
      y = y-2;
      x = x-2;
    }
    if(orientation == 7){
      y = y+2;
      x = x+2;
    }
    if(orientation == 8){
      y = y+2;
      x = x-2;
    }
  }

  boolean terminate(float Xtank, float Ytank) { //destruction de la balle en fonction de ...
    if (x+10 >= 1000 || x-10 <= 0 || y+10 >= 750 || y-10 <= 0) { // les bords de l'écran
      return true;
    }
    // des coordonnées du tank adverse
    if ((x+10 >= Xtank && y-10 >= Ytank-20 && y+10 <= Ytank+52 && x+10 <= Xtank+3) || (x-10 <= Xtank+32 && y-10 >= Ytank-20 && y+10 <= Ytank+52 && x-10 >= Xtank+29) ||
      (y+10 >= Ytank && x-10 >= Xtank-20 && x+10 <= Xtank+52 && y+10 <= Ytank+3) || (y-10 <= Ytank+32 && x-10 >= Xtank -20 && x+10 <= Xtank+52 && y-10 >= Ytank+29)) { 
      return true;
    } else {
      return false;
    }
  }
}
