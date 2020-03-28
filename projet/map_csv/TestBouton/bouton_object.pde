class Bouton {
  float x, y;
  int sizeX, sizeY;
  PImage image;

  Bouton(float newX, float newY, int newSizeX, int newSizeY, PImage newImage) {
    x = newX;
    y = newY;
    sizeX = newSizeX;
    sizeY = newSizeY;
    image = newImage;
  }

  void display() {
    rect(x, y, sizeX, sizeY);
    image(image,x,y);
  }
  void collisions() {
    if (mouseX>x && mouseX <x+sizeX && mouseY>y && mouseY <y+sizeY) {
      fill(0);
    }
  }
}

/*for (i = 0; i<bouton.size(); i++) {
 Bouton bouton = bouton.get(i);
 bouton.display();
 bouton.collisions();
 }*/
