PImage Limite, Vide, Pierre, PierreSable, Herbe1, Herbe2, Sable1, Sable2;
ArrayList<PImage> sprite = new ArrayList<PImage>();
float posX = 792;
float posY = 10;
int image = 0;
ArrayList<Bouton> btn1 = new ArrayList<Bouton>();

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
  
  Limite.resize(48,48);
  Vide.resize(48,48);
  Pierre.resize(48,48);
  PierreSable.resize(48,48);
  Sable1.resize(48,48);
  Sable2.resize(48,48);
  Herbe1.resize(48,48);
  Herbe2.resize(48,48);
  
  sprite.add(Limite);
  sprite.add(Vide);
  sprite.add(Pierre);
  sprite.add(PierreSable);
  sprite.add(Sable1);
  sprite.add(Sable2);
  sprite.add(Herbe1);
  sprite.add(Herbe2);

  for ( int i = 0; i < 2; i++) {
    for ( int j = 0; j<4; j++) {
      btn1.add(new Bouton(posX, posY, 48, 48, sprite.get(image)));
      posX = posX + 58;
      image++;
    }
    posY = posY + 58;
    posX = 792;
  }
}

void draw() {
  for (int i = 0; i < btn1.size(); i++) {
    Bouton bouton1 = btn1.get(i);
    if (mousePressed) {
      bouton1.collisions();
    }
    bouton1.display();
  }
} 
