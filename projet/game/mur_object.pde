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
  boolean collisionTir(float xTir, float yTir){
    if(yTir >= y-20 && yTir <= y+52 && xTir+10 <= x+3 && xTir+10 >= x || xTir-10 >= x-20 && xTir+10 <= x+52 && yTir+10 <= y+3 && yTir +10 >= y ||
       yTir-10 >= y-20 && yTir+10 <= y+52 && xTir >= x+29 && xTir-10 <= x+32 || xTir-10 >= x-20 && xTir+10 <= x+52 && yTir-10 >= y+29 && yTir-10 <= y+32){
      return true;
    }else{
      return false;
    }
  }
  void collisionTank(float TankX, float TankY, boolean colL, boolean colU, boolean colD, boolean colR){
    if(){
      
    }
  }
}
