float posX = 560;
float posY = 10;
float lineX = 0;
float lineY = 96;
Bouton btn1[] = new Bouton[8];

PImage img[]=new PImage[8];
PImage aff[]= new PImage[8];
int x, y;
int select = 8;
int colonnes = 32;
int lignes = 23;
int image[][] = new int[colonnes][lignes];

void setup() {

  size(1024, 736);
  background(0);
  stroke(0);
  noFill();

  for (int i = 0; i < colonnes; i++) {
    for (int j = 0; j < lignes; j++) {
      image[i][j] = 1;
    }
  }

  img[0] = loadImage("data/01.png");
  img[1] = loadImage("data/00.png");
  img[2] = loadImage("data/13.png");
  img[3] = loadImage("data/23.png");
  img[4] = loadImage("data/21.png");
  img[5] = loadImage("data/22.png");
  img[6] = loadImage("data/11.png");
  img[7] = loadImage("data/12.png");

  aff[0] = loadImage("data/01.png");
  aff[1] = loadImage("data/00.png");
  aff[2] = loadImage("data/13.png");
  aff[3] = loadImage("data/23.png");
  aff[4] = loadImage("data/21.png");
  aff[5] = loadImage("data/22.png");
  aff[6] = loadImage("data/11.png");
  aff[7] = loadImage("data/12.png");

  img[0].resize(48, 48);
  img[1].resize(48, 48);
  img[2].resize(48, 48);
  img[3].resize(48, 48);
  img[4].resize(48, 48);
  img[5].resize(48, 48);
  img[6].resize(48, 48);
  img[7].resize(48, 48);

  for (int i = 0; i < 8; i++) {
    btn1[i] = new Bouton(posX, posY, 48, 48, img[i]);
    posX += 58;
  }
  posX = 0;
  posY = 32*3;
}
void draw() {
  background(255);
  for (int i = 0; i < 8; i++) {
    btn1[i].display();
  }
  for (int i = 0; i < colonnes; i++) {
    for (int j = 0; j < lignes; j++) {
      image(aff[image[i][j]], posX, posY);
      posY += 32;
    }
    posY = 3*32;
    posX += 32;
  }
  posX = 0;
  posY = 32*3;

  for (int i = 0; i < colonnes; i++) {
    for (int j = 0; j < lignes; j++) {
      strokeWeight(1);
      line(lineX, lineY, lineX+32, lineY);
      lineY += 32;
    }   
    lineX += 32;
    lineY = 96;
    line(lineX, lineY, lineX, lineY+704);
  }
  lineX = 0;
  lineY = 96;
}

void mouseClicked() {
  for (int i = 0; i < 8; i++) {
    btn1[i].collisions(i);
  }
  for ( x = 0; x < colonnes; x++) {
    for ( y = 0; y < lignes; y++) {
      if (mouseX >= posX && mouseX <= posX+32 && mouseY >= posY && mouseY <= posY+32 && select != 8) {
        image[x][y] = select;
      }
      posY += 32;
    }
    posY = 3*32;
    posX += 32;
  }
  posX = 0;
  posY = 32*3;
}

/*void sauvegarder_CSV(){
 Table tableau= new Table();
 int x;
 int y;
 for (x=0; x<largeur; x++) {
 tableau.addColumn(str(x), Table.INT);
 }
 for (y=0; y<hauteur; y++) {
 tableau.addRow();
 for (x=0; x<largeur; x++) {
 tableau.setInt(y, str(x), niveau[x][y]);
 }
 }
 saveTable(tableau, "data/NouvMap.csv");
 }*/
