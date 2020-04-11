class Bouton {
  float x, y;
  int sizeX, sizeY;
  PImage image;
  boolean clic = false;

  Bouton(float newX, float newY, int newSizeX, int newSizeY, PImage newImage) {
    x = newX;
    y = newY;
    sizeX = newSizeX;
    sizeY = newSizeY;
    image = newImage;
  }

  void display() {
    image(image, x, y);
  }
  void collisions(int h) {
    if (mouseX>x && mouseX <x+sizeX && mouseY>y && mouseY <y+sizeY) {
      for (int i = 0; i < btn1.size(); i++) {
        if (i != h) {
          Bouton bouton = btn1.get(i);
          if (bouton.clic) {
            bouton.clic = false;
          }
        }
      }
    clic = true;
    state = 0;
    }
  }
}

/*for (i = 0; i<bouton.size(); i++) {
 Bouton bouton = bouton.get(i);
 bouton.display();
 bouton.collisions();
 }*/
