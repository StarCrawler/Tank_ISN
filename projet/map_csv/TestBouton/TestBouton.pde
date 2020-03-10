float x = 966;
float y = 10;
float w = 48;
float h = 48;

void setup(){
  
 size(1024, 736);
 background(255);
 stroke(0);
 noFill();
}

void draw(){
 rect(x,y,w,h);
 fill(255);
  if(mouseX>x && mouseX <x+w && mouseY>y+58 && mouseY <y+58+h && mousePressed){
   fill(0);
  }
 rect(x,y+58,w,h);
 fill(255);
  if(mouseX>x-58 && mouseX <x-58+w && mouseY>y && mouseY <y+h && mousePressed){
   fill(0);
  }
  rect(x-58,y,w,h);
  fill(255);
  if(mouseX>x-58 && mouseX <x-58+w && mouseY>y+58 && mouseY <y+58+h && mousePressed){
   fill(0);
  }
  rect(x-58,y+58,w,h);
  fill(255);
  if(mouseX>x-116 && mouseX <x-116+w && mouseY>y && mouseY <y+h && mousePressed){
  fill(0);
  }
  rect(x-116,y,w,h);
  fill(255);
  if(mouseX>x-116 && mouseX <x-116+w && mouseY>y+58 && mouseY <y+58+h && mousePressed){
  fill(0);
  }
  rect(x-116,y+58,w,h);
  fill(255);
  if(mouseX>x-174 && mouseX <x-174+w && mouseY>y && mouseY <y+h && mousePressed){
  fill(0);
  }
  rect(x-174,y,w,h);
  fill(255);
  if(mouseX>x-174 && mouseX <x-174+w && mouseY>y+58 && mouseY <y+58+h && mousePressed){
  fill(0);
  }
  rect(x-174,y+58,w,h);
  fill(255);
  if(mouseX>x && mouseX <x+w && mouseY>y && mouseY <y+h && mousePressed){
  fill(0);
  }
 } 
 
