float posX = 560;
float posY = 10;
float lineX = 0;
float lineY = 96;
Bouton btn1[] = new Bouton[8];
Bouton save[] = new Bouton[1];

PImage img[]=new PImage[9];
PImage aff[]= new PImage[24];
int x, y;
int select = 8;
int colonnes = 32;
int lignes = 23;
int image[][] = new int[colonnes][lignes];
int niveau[][]= new int[colonnes][lignes];

void setup() {

  size(1024, 736);
  background(0);
  stroke(0);
  noFill();

  for (int i = 0; i < colonnes; i++) {
    for (int j = 0; j < lignes; j++) {
      image[i][j] = 0;
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
  img[8] = loadImage("data/Save.png");

  aff[1] = loadImage("data/01.png");
  aff[0] = loadImage("data/00.png");
  aff[13] = loadImage("data/13.png");
  aff[23] = loadImage("data/23.png");
  aff[21] = loadImage("data/21.png");
  aff[22] = loadImage("data/22.png");
  aff[11] = loadImage("data/11.png");
  aff[12] = loadImage("data/12.png");

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

  save[0] = new Bouton(10, 10, 144, 48, img[8]);
}
void draw() {
  background(255);
  save[0].display();

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

  textSize(16);
  text("Sauvegarder", 33, 40);
  fill(255);
}

void mouseClicked() {
  save[0].collisions(9);

  for (int i = 0; i < 8; i++) {
    btn1[i].collisions(i);
  }
  for ( x = 0; x < colonnes; x++) {
    for ( y = 0; y < lignes; y++) {
      if (mouseX >= posX && mouseX <= posX+32 && mouseY >= posY && mouseY <= posY+32) {
        if(select == 0){
          image[x][y] = 1;
        }
        if(select == 1){
          image[x][y] = 0;
        }
        if(select == 2){
          image[x][y] = 13;
        }
        if(select == 3){
          image[x][y] = 23;
        }
        if(select == 4){
          image[x][y] = 21;
        }
        if(select == 5){
          image[x][y] = 22;
        }
        if(select == 6){
          image[x][y] = 11;
        }
        if(select == 7){
          image[x][y] = 12;
        }
      } else if (select==9) {
        sauvegarder_CSV();
      }
      posY += 32;
    }
    posY = 3*32;
    posX += 32;
  }
  posX = 0;
  posY = 32*3;
}

void sauvegarder_CSV() {
  Table tableau= new Table();
  int x;
  int y;
  for (x=0; x<colonnes; x++) {
    tableau.addColumn(str(x), Table.INT);
  }
  for (y=0; y<lignes; y++) {
    tableau.addRow();
    for (x=0; x<colonnes; x++) {
      tableau.setInt(y, str(x), image[x][y]);
    }
  }
  saveTable(tableau, "data/NouvMap.csv");
}
