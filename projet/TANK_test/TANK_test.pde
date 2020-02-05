Tank tank1 = new Tank(100,100,#0762eb);
Tank tank2 = new Tank(200,200,color(0));


void setup(){
  size(1000,750); 
  background(255);
  
}

void draw(){
  background(255);
  tank1.display();
  tank2.display();
  tank1.move();
}

void keyPressed(){
  if(key == 'z'){
    tank1.deplacementY = -1;
  }
  if(key == 's'){
    tank1.deplacementY = 1;
  }
  if(key == 'q'){
    tank1.deplacementX = -1;
  }
  if(key == 'd'){
    tank1.deplacementX = 1;
  }
}
void keyReleased(){
  if(key == 'z'){
    tank1.deplacementY = 0;
  }
  if(key == 's'){
    tank1.deplacementY = 0;
  }
  if(key == 'q'){
    tank1.deplacementX = 0;
  }
  if(key == 'd'){
    tank1.deplacementX = 0 
    ;
  }
}
//création de l'objet tank
class Tank{
  float x;
  float y;
  color couleur;
  int deplacementX;
  int deplacementY;
  
  Tank (float newX, float newY, color newCouleur){
    x = newX;
    y = newY;
    couleur = newCouleur;
  }
  void display() {
    noStroke();
    fill(couleur);
    rect(x,y,25,25);
  }
  void move(){
    x = deplacementX + x;
    y = deplacementY + y;
  }
}
