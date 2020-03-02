Tank tank1 = new Tank(100, 100, #0762eb);
Tank tank2 = new Tank(200, 200, color(0));
ArrayList<Tir> bullets = new ArrayList<Tir>();
int orientation1;

PImage moveL, moveR, moveU, moveD, tir;

void setup() {
  size(1000, 750); 
  background(255);
  asset_load();
}

void keyPressed() {
  if (key == 'z') {
    orientation1 = 1;
    tank1.deplacementYu = -1;
    tank1.spritep = 1;
  }
  if (key == 's') {
    orientation1 = 2;
    tank1.deplacementYd = 1;
    tank1.spritep = 2;
  }
  if (key == 'q') {
    orientation1 = 3;
    tank1.deplacementXl = -1;
    tank1.spritep = 3;
  }
  if (key == 'd') {
    orientation1 = 4;
    tank1.deplacementXr = 1;
    tank1.spritep = 4;
  }
  if (key == 'e') {
    bullets.add(new Tir(tank1.x+12, tank1.y+12, color(0), orientation1));
  }
  if (keyCode == UP) {
    tank2.deplacementYu = -1;
    tank2.spritep = 1;
  }
  if (keyCode == DOWN) {
    tank2.deplacementYd = 1;
    tank2.spritep = 2;
  }
  if (keyCode == LEFT) {
    tank2.deplacementXl = -1;
    tank2.spritep = 3;
  }
  if (keyCode == RIGHT) {
    tank2.deplacementXr = 1;
    tank2.spritep = 4;
  }
  if (keyCode == ENTER) {
    //bullets.add(new Tir(tank2.x+12,tank2.y+12,color(0)));
  }
}
void keyReleased() {
  if (key == 'z') {
    tank1.deplacementYu = 0;
  }
  if (key == 's') {
    tank1.deplacementYd = 0;
  }
  if (key == 'q') {
    tank1.deplacementXl = 0;
  }
  if (key == 'd') {
    tank1.deplacementXr = 0;
  }
  if (keyCode == UP) {
    tank2.deplacementYu = 0;
  }
  if (keyCode == DOWN) {
    tank2.deplacementYd = 0;
  }
  if (keyCode == LEFT) {
    tank2.deplacementXl = 0;
  }
  if (keyCode == RIGHT) {
    tank2.deplacementXr = 0;
  }
}

void draw() {
  background(255);
  for (int i =0; i < bullets.size()-1; i++) {
    Tir tir = bullets.get(i);
    tir.display();
    tir.update();
    if (tir.terminate()) {
      bullets.remove(i);
    }
  }
  tank1.display();
  tank2.display();
  tank1.collision(tank2.x, tank2.y);
  tank2.collision(tank1.x, tank1.y);
  tank1.move();
  tank2.move();
}
