class Bouton {
  float x, y;
  int sizeX, sizeY;
  PImage image;
  boolean clic;

  Bouton(float newX, float newY, int newSizeX, int newSizeY, PImage newImage) {
    x = newX;
    y = newY;
    sizeX = newSizeX;
    sizeY = newSizeY;
    image = newImage;
  }

  void display() {
    image(image, x, y);
    if(clic){
      strokeWeight(4);
      strokeCap(ROUND);
      line(x,y,x+48,y);
      line(x+48,y,x+48,y+48);
      line(x+48,y+48,x,y+48);
      line(x,y+48,x,y);
    }
  }
  void collisions() {
    if (mouseX>x && mouseX <x+sizeX && mouseY>y && mouseY <y+sizeY) {
      clic = true;
    }else{
      clic = false;
    }
  }
}
