import controlP5.*;
ControlP5 cp5;
int state = 0;

void setup(){
  size(500,500);
  noStroke();
  cp5 = new ControlP5(this);
  
  cp5.addButton("demarrage")
     .setPosition(250,250)
     .setSize(50,50)
     ;
     
}

void draw(){
  print(state);
  switch(state){
    case 0:
      background(255);
    break;
    case 1:
      background(0);
    break;
  }
}

public void demarrage(){
  state = 1;
}
