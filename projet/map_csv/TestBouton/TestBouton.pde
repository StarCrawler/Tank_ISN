PImage Limite, Vide, Pierre, PierreSable, Herbe1, Herbe2, Sable1, Sable2;
ArrayList<PImage> sprite = new ArrayList<PImage>();
float posX = 792;
float posY = 10;
int image = 0;
int state = 0;
ArrayList<Bouton> btn1 = new ArrayList<Bouton>();
Bouton limite;
Bouton vide;
Bouton pierre;
Bouton pierresable;
Bouton herbe1;
Bouton herbe2;
Bouton sable1;
Bouton sable2;

void setup() {

  size(1024, 736);
  background(0);
  stroke(0);
  noFill();

  Limite = loadImage("data/01.png");
  Vide = loadImage("data/00.png");
  Pierre = loadImage("data/13.png");
  PierreSable = loadImage("data/23.png");
  Sable1 = loadImage("data/21.png");
  Sable2 = loadImage("data/22.png");
  Herbe1 = loadImage("data/11.png");
  Herbe2 = loadImage("data/12.png");

  Limite.resize(48, 48);
  Vide.resize(48, 48);
  Pierre.resize(48, 48);
  PierreSable.resize(48, 48);
  Sable1.resize(48, 48);
  Sable2.resize(48, 48);
  Herbe1.resize(48, 48);
  Herbe2.resize(48, 48);

  sprite.add(Limite);
  sprite.add(Vide);
  sprite.add(Pierre);
  sprite.add(PierreSable);
  sprite.add(Sable1);
  sprite.add(Sable2);
  sprite.add(Herbe1);
  sprite.add(Herbe2);

  limite = new Bouton(posX, posY, 48, 48, Limite);
  vide = new Bouton(posX+58, posY, 48, 48, Vide);
  pierre = new Bouton(posX+116, posY, 48, 48, Pierre);
  pierresable = new Bouton(posX+174, posY, 48, 48, PierreSable);
  herbe1 = new Bouton(posX, posY+58, 48, 48, Herbe1);
  herbe2 = new Bouton(posX+58, posY+58, 48, 48, Herbe2);
  sable1 = new Bouton(posX+116, posY+58, 48, 48, Sable1);
  sable2 = new Bouton(posX+174, posY+58, 48, 48, Sable2);
}
void draw() {
  background(255);
  
  limite.display();
  vide.display();
  pierre.display();
  pierresable.display();
  herbe1.display();
  herbe2.display();
  sable1.display();
  sable2.display();
  if (mousePressed) {
    limite.collisions();
    vide.collisions();
    pierre.collisions();
    pierresable.collisions();
    herbe1.collisions();
    herbe2.collisions();
    sable1.collisions();
    sable2.collisions();
  }
}
