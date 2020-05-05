

void asset_load() {
  //chargement des sprites
  tir = loadImage("sprite/tir.png");
  moveL1 = loadImage("sprite/playerL1.png");
  moveR1 = loadImage("sprite/playerR1.png");
  moveU1 = loadImage("sprite/playerU1.png");
  moveD1 = loadImage("sprite/playerD1.png");
  moveUR1 = loadImage("sprite/playerUR1.png");
  moveUL1 = loadImage("sprite/playerUL1.png");
  moveDR1 = loadImage("sprite/playerDR1.png");
  moveDL1 = loadImage("sprite/playerDL1.png");
  moveL2 = loadImage("sprite/playerL2.png");
  moveR2 = loadImage("sprite/playerR2.png");
  moveU2 = loadImage("sprite/playerU2.png");
  moveD2 = loadImage("sprite/playerD2.png");
  moveUR2 = loadImage("sprite/playerUR2.png");
  moveUL2 = loadImage("sprite/playerUL2.png");
  moveDR2 = loadImage("sprite/playerDR2.png");
  moveDL2 = loadImage("sprite/playerDL2.png");
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
