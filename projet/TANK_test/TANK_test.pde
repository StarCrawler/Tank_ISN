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
  //tank1.collision(tank2.x,tank2.y);
  tank1.move();
  tank2.move();
}

void keyPressed(){
  if(key == 'z'){
    if(tank1.collisiond == false){
      tank1.deplacementY = -1;
    }
  }
  if(key == 's'){
    if(tank1.collisionu == false){
      tank1.deplacementY = 1;
    }
  }
  if(key == 'q'){
    if(tank1.collisionr == false){
      tank1.deplacementX = -1;
    }
  }
  if(key == 'd'){
    if(tank1.collisionl == false){
      tank1.deplacementX = 1;
    }
  }
  if(keyCode == UP){
    tank2.deplacementY = -1;
  }
  if(keyCode == DOWN){
    tank2.deplacementY = 1;
  }
  if(keyCode == LEFT){
    tank2.deplacementX = -1;
  }
  if(keyCode == RIGHT){
    tank2.deplacementX = 1;
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
    tank1.deplacementX = 0;
  }
  if(keyCode == UP){
    tank2.deplacementY = 0;
  }
  if(keyCode == DOWN){
    tank2.deplacementY = 0;
  }
  if(keyCode == LEFT){
    tank2.deplacementX = 0;
  }
  if(keyCode == RIGHT){
    tank2.deplacementX = 0;
  }
}
//création de l'objet tank
class Tank{
  float x;
  float y;
  color couleur;
  int deplacementX;
  int deplacementY;
  boolean collisionr = false , collisionl = false, collisionu = false , collisiond = false;
  
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
  void collision(float otherX,float otherY){
    if(x+25 >= otherX && y+25 >= otherY  && y <= (otherY +25)){
      collisionl = true;
    }else{
      collisionl = false;
    }
    if(y+25 >= otherY && x+25 >= otherX && x <= (otherX+25)){
      collisionu = true;
    }else{
      collisionu = false;
    }
    if(y <= otherY+25 && x >= otherX && x <= (otherX+25)){
      collisiond = true;
    }else{
      collisiond = false;
    }
    if(x <= otherX+25 && y >= otherY && y <= (otherY+25)){
      collisionr = true;
    }else{
      collisionr = false;
    }
  }
}
