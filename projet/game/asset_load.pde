PImage moveL, moveR, moveU, moveD, tir; // variable des sprites du jeu

void asset_load(){
  tir = loadImage("sprite/tir.png");
  moveL = loadImage("sprite/tankL.png");
  moveR = loadImage("sprite/tankR.png");
  moveU = loadImage("sprite/tankU.png");
  moveD = loadImage("sprite/tankD.png");
  moveL.resize(34, 34);
  moveR.resize(34, 34);
  moveU.resize(34, 34);
  moveD.resize(34, 34);
}
