




void map1() {
  img[0] = loadImage("00.png");
  img[1] = loadImage("01.png");
  img[11] = loadImage("11.png");
  img[12] = loadImage("12.png");
  img[13] = loadImage("13.png");

  tableau=loadTable("data/Map1.csv", "header");

  for (y=3; y<largeur; y++) {    
    for (x=0; x<hauteur; x++) {     
      numeroImage = tableau.getInt(y, x);
      map1[y][x]=numeroImage;
    }
  }
}

void traceMap1() {
  int numeroDessin;
  for (y=0; y<largeur; y++) {    
    for (x=0; x<hauteur; x++) {
      numeroDessin=map1[y][x];
      image(img[numeroDessin], x*32, y*32);
    }
  }
}
