Tank tank1 = new Tank(100,100,#0762eb);


void setup(){
  size(1000,750); 
  background(0);
  
}

void draw(){
  tank1.display();
}

class Tank{
  float x;
  float y;
  color couleur;
  
  Tank (float newX, float newY, color newCouleur){
    x = newX;
    y = newY;
    couleur = newCouleur;
  }
  void display() {
    fill(couleur);
    rect(x,y,25,25);
    
  }
}