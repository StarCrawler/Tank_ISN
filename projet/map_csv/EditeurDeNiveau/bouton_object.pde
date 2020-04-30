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
      line(x,y,x+sizeX,y);
      line(x+sizeX,y,x+sizeX,y+sizeY);
      line(x+sizeX,y+sizeY,x,y+sizeY);
      line(x,y+sizeY,x,y);
      strokeWeight(0);
    }
  }
  void collisions(int h) {
    if (mouseX>x && mouseX <x+sizeX && mouseY>y && mouseY <y+sizeY) {
      clic = true;
      select = h;
    }else{
      clic = false;
    }
  }
}
