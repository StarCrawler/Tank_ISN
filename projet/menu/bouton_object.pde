class Bouton {
  float x, y;
  int sizeX, sizeY;
  String name;
  boolean clic = false;
  
  Bouton(float newX, float newY, int newSizeX, int newSizeY, String newName){
    x = newX;
    y = newY;
    sizeX = newSizeX;
    sizeY = newSizeY;
    name = newName;
  }
  
  void display(){
    fill(255);
    noStroke();
    rect(x,y,sizeX,sizeY);
    textAlign(CENTER);
    textSize(30);
    fill(0);
    text(name, x + float(sizeX/2), y + float(sizeY/2) + 10); 
  }
  
  void col(){
    if(mouseX >= x && mouseX <= x+sizeX && mouseY >= y && mouseY <= y+sizeY){
      clic = true;
    }else{
      clic = false;
    }
  }
}
