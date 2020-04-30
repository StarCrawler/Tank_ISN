

void asset_load() {
  //chargement des sprites
  tir = loadImage("sprite/tir.png");
  moveL1 = loadImage("sprite/playerL1.png");
  moveR1 = loadImage("sprite/playerR1.png");
  moveU1 = loadImage("sprite/playerU1.png");
  moveD1 = loadImage("sprite/playerD1.png");
  moveL2 = loadImage("sprite/playerL2.png");
  moveR2 = loadImage("sprite/playerR2.png");
  moveU2 = loadImage("sprite/playerU2.png");
  moveD2 = loadImage("sprite/playerD2.png");
  lifeFull = loadImage("sprite/life1.png");
  //redimmensionnement des sprites
  tir.resize(10, 10);
  moveL1.resize(34, 34);
  moveR1.resize(34, 34);
  moveU1.resize(34, 34);
  moveD1.resize(34, 34);
  moveL2.resize(34, 34);
  moveR2.resize(34, 34);
  moveU2.resize(34, 34);
  moveD2.resize(34, 34);
  lifeFull.resize(32,32);
}
