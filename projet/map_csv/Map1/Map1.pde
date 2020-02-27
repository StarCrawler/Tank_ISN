Table tableau;
int hauteur=32;
int largeur=23;
PImage img[]=new PImage[2];
int niveau[][]=new int[largeur][hauteur];
int x,y,numeroImage;




void setup() {
  img[0] = loadImage("00.png");
  img[1] = loadImage("01.png");
  
  size(1024, 736);
  background(255);
  textSize(26);

  tableau=loadTable("data/Map1.csv", "header");
  
  for (y=3; y<largeur; y++) {    
    for (x=0; x<hauteur; x++) {     
      numeroImage = tableau.getInt(y, x);
        niveau[y][x]=numeroImage;
        print(numeroImage+",");
    }
    println();
  }

  tracetableau();    
}


void draw()    
{
}  


void tracetableau() {
  int numeroDessin;
  for (y=0; y<largeur; y++) {    
    for (x=0; x<hauteur; x++) {
      numeroDessin=niveau[y][x];
      print(numeroDessin+",");
      image(img[numeroDessin], x*32, y*32);
    }
    println();
  }
}
