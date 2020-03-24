import controlP5.*;
ControlP5 cp5;
int state;

void setup(){
  size(500,500);
  noStroke();
  cp5 = new ControlP5(this);
  
  cp5.addButton("start")
     .setPosition(250,250)
     .setSize(50,50)
     ;
     
}

void draw(){
  
}
