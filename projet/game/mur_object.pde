class Mur {
  float x;
  float y;
  color colour;
  
  Mur(float newX, float newY, color newColour){
    x = newX;
    y = newY;
    colour = newColour;
  }
  
  void display(){
    noStroke();
    fill(colour);
    rect(x,y,32,32);
  }
}
