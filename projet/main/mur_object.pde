class Mur {
  float x;
  float y;

  Mur(float newX, float newY) { //constructeur des boites de collisions 
    x = newX;
    y = newY;
  }
  
  boolean collisionTir(float xTir, float yTir) { //détection des collisions des tirs 
    if (yTir >= y-10 && yTir <= y+42 && xTir+10 <= x+3 && xTir+10 >= x || xTir-10 >= x-10 && xTir+10 <= x+42 && yTir+10 <= y+3 && yTir +10 >= y ||
      yTir-10 >= y-10 && yTir+10 <= y+42 && xTir >= x+29 && xTir-10 <= x+32 || xTir-10 >= x-10 && xTir+10 <= x+42 && yTir-10 >= y+29 && yTir-10 <= y+32) {
      return true;
    } else {
      return false;
    }
  }
}
