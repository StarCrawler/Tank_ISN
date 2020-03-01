PImage tir;
ArrayList<Tir> bullets = new ArrayList<Tir>();

void setup() {
  size(300, 300);
  tir = loadImage("sprite/tir.png");
  tir.resize(50,25);
}

void draw() {
  background(255);
  for(int i = 0; i < bullets.size()-1; i++){
    Tir tir = bullets.get(i);
    tir.display();
    tir.update();
    if(tir.terminate()){
      bullets.remove(i);
    }
  }
}

void keyPressed() {
  if (key == 'e') {
    bullets.add(new Tir(150, 150, tir));
  }
}


class Tir {
  float x;
  float y;
  PImage tir;
  Tir(float newX, float newY, PImage newtir) {
    x = newX;
    y = newY;
    tir = newtir;
  }

  void display() {
    image(tir, x, y);
  }
  
  void update(){
    x = x+1;
  }
  boolean terminate(){
    if(x+50 >= 300){
      return true;
    }else{
      return false;
    }
  }
}
