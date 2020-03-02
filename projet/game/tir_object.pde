class Tir {
  float x;
  float y;
  color colour;
  int orientation;
  Tir(float newX, float newY, color newColor, int newOrientation) {
    x = newX;
    y = newY;
    colour = newColor;
    orientation = newOrientation;
  }

  void display() {
    noStroke();
    fill(colour);
    ellipse(x,y,10,10);
  }
  
  void update(){
    if(orientation == 1){
      y = y-1;
    }
    if(orientation == 2){
      y = y+1;
    }
    if(orientation == 3){
      x = x-1;
    }
    if(orientation == 4){
      x = x+1;
    }
  }
  
  boolean terminate(){
    if(x+10 >= 1000){
      return true;
    }else if(x-10 <= 0){
      return true;
    }else if(y+10 >= 750){
      return true;
    }else if(y-10 <= 0){
      return true;
    }else{
      return false;
    }
  }
}
