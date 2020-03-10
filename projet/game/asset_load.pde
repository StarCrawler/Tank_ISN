PImage moveL, moveR, moveU, moveD, tir; // variable des sprites du jeu

void asset_load(){
  tir = loadImage("sprite/tir.png");
  moveL = loadImage("sprite/tankL.png");
  moveR = loadImage("sprite/tankR.png");
  moveU = loadImage("sprite/tankU.png");
  moveD = loadImage("sprite/tankD.png");
  moveL.resize(32, 32);
  moveR.resize(32, 32);
  moveU.resize(32, 32);
  moveD.resize(32, 32);
}
