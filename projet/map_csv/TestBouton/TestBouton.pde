ArrayList<PImage> sprite = new ArrayList<PImage>();
float posX = 618;
float posY = 10;
float lineX = 0;
float lineY = 96;
int image = 0;
int state = 0;
ArrayList<Bouton> btn1 = new ArrayList<Bouton>();

Table tableau;
int hauteur=32;
int largeur=23;
PImage img[]=new PImage[24];
int niveau[][]=new int[largeur][hauteur];
int x, y, Image;

int colonnes = 32;
int lignes = 23;


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


  img[1] = loadImage("data/01.png");
  img[0] = loadImage("data/00.png");
  img[13] = loadImage("data/13.png");
  img[23] = loadImage("data/23.png");
  img[21] = loadImage("data/21.png");
  img[22] = loadImage("data/22.png");
  img[11] = loadImage("data/11.png");
  img[12] = loadImage("data/12.png");

  img[1].resize(48, 48);
  img[0].resize(48, 48);
  img[13].resize(48, 48);
  img[23].resize(48, 48);
  img[21].resize(48, 48);
  img[22].resize(48, 48);
  img[11].resize(48, 48);
  img[12].resize(48, 48);

  sprite.add(img[1]);
  sprite.add(img[0]);
  sprite.add(img[13]);
  sprite.add(img[23]);
  sprite.add(img[21]);
  sprite.add(img[22]);
  sprite.add(img[11]);
  sprite.add(img[12]);

  limite = new Bouton(posX+406, posY, 48, 48, img[1]);
  vide = new Bouton(posX+348, posY, 48, 48, img[0]);
  pierre = new Bouton(posX+290, posY, 48, 48, img[13]);
  pierresable = new Bouton(posX+232, posY, 48, 48, img[23]);
  herbe1 = new Bouton(posX+174, posY, 48, 48, img[11]);
  herbe2 = new Bouton(posX+116, posY, 48, 48, img[12]);
  sable1 = new Bouton(posX+58, posY, 48, 48, img[21]);
  sable2 = new Bouton(posX, posY, 48, 48, img[22]);

  tableau=loadTable("data/base.csv", "header");

  for (y=3; y<largeur; y++) { //Permet de décaler la map csv de 3 lignes en partant du haut// 
    for (x=0; x<hauteur; x++) {     
      Image = tableau.getInt(y, x);
      niveau[y][x]=Image;
      print(Image+",");
    }
    println();
  }
}
void draw() {
  background(255);
  tracetableau();

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
  for (int i = 0; i < colonnes; i++) {
    for (int j = 0; j < lignes; j++) {
      line(lineX, lineY, lineX+32, lineY);
      lineY += 32;
      strokeWeight(1);
    }   
    lineX += 32;
    lineY = 96;
    line(lineX,lineY,lineX,lineY+704);
  }
  lineX = 0;
  lineY = 96;
}

void tracetableau() {
  int numeroDessin;
  for (y=0; y<largeur; y++) { //Les variables for permettent d'afficher la bonne image//   
    for (x=0; x<hauteur; x++) {
      numeroDessin=niveau[y][x]; //Prend la valeur dans la Liste et la met dans numeroDessin//
      print(numeroDessin+","); //Affiche les images en question//
      image(img[numeroDessin], x*32, y*32); //Définit la taille d'une cellule du csv en image 32 par 32 sur le jeu//
    }
    println();
  }
}
