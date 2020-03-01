class Tir {
  float x;
  float y;
  color colour;
  Tir(float newX, float newY, color newColor) {
    x = newX;
    y = newY;
    colour = newColor;
  }

  void display() {
    noStroke();
    fill(colour);
    ellipse(x,y,10,10);
  }
  
  void update(){
    x = x + 1;
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
