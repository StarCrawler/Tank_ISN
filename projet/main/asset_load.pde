

void asset_load() {
  //chargement des sprites
  tir = loadImage("sprite/tir.png");
  moveL = loadImage("sprite/tankL.png");
  moveR = loadImage("sprite/tankR.png");
  moveU = loadImage("sprite/tankU.png");
  moveD = loadImage("sprite/tankD.png");
  lifeFull = loadImage("sprite/life1.png");
  //redimmensionnement des sprites
  tir.resize(10, 10);
  moveL.resize(34, 34);
  moveR.resize(34, 34);
  moveU.resize(34, 34);
  moveD.resize(34, 34);
  lifeFull.resize(32,32);
}
