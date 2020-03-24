class Bouton {
  float x, y;
  int sizeX, sizeY;
  
  Bouton(float newX, float newY, int newSizeX, int newSizeY){
    x = newX;
    y = newY;
    sizeX = newSizeX;
    sizeY = newSizeY;
  }
  
  void display(){
    fill(0);
    rect(x,y,sizeX,sizeY);
  }
}
