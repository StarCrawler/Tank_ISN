Tank tank1 = new Tank(100, 100, #0762eb); // création du tank du premier joueur
Tank tank2 = new Tank(200, 200, color(0)); // création du tank du deuxième joueur
ArrayList<Mur> mur1 = new ArrayList<Mur>();
ArrayList<Tir> bullets1 = new ArrayList<Tir>(); // création du tableau modulaire des balles du joueur 1
ArrayList<Tir> bullets2 = new ArrayList<Tir>(); // création du tableau modulaire des balles du joueur 2
int orientation1 = 4; // variable indiquant l'orientation du tank
int orientation2 = 4;
int[][] murListe;
int posX = 0;
int posY = 0;

void setup() {
  size(1000, 750); 
  background(255);
  asset_load(); // chargement des assets du jeu

  murListe = new int[5][2];
  murListe[0][0] = 1;
  murListe[1][0] = 1;
  murListe[2][0] = 1;
  murListe[3][0] = 1;
  murListe[4][0] = 1;
  murListe[0][1] = 1;
  for ( int i = 0; i < 2; i++) {
    for ( int j = 0; j < 5; j++) {
      if (murListe[j][i] == 1) {
        mur1.add(new Mur(posX, posY, color(0)));
      }
      posX = posX + 32;
    }
    posY = posY + 32;
    posX = 0;
  }
}

void draw() {
  background(255);
  // verification des tableaux des balles
  for (int i = 0; i < bullets1.size(); i++) {
    Tir tir = bullets1.get(i);
    tir.display(); // affichage des balles
    tir.update(); // maj de leur position
    for (int j = 0; j < mur1.size(); j++) {
      Mur mur = mur1.get(j);
      // verification de la position des balles pour détecter d'éventuelles collisions
      if (tir.terminate(tank2.x, tank2.y) || mur.collisionTir(tir.x, tir.y)) {
        bullets1.remove(i);
      }
    }
  }
  for (int i = 0; i < bullets2.size(); i++) {
    Tir tir = bullets2.get(i);
    tir.display();
    tir.update();
    for (int j = 0; j < mur1.size(); j++) {
      Mur mur = mur1.get(j);
      if (tir.terminate(tank1.x, tank1.y) || mur.collisionTir(tir.x, tir.y)) {
        bullets2.remove(i);
      }
    }
  }
  tank1.display(); // affichage des tanks 
  tank2.display();
  tank1.collision(tank2.x, tank2.y); // détection des collisions entre les deux tanks
  tank2.collision(tank1.x, tank1.y);
  for (int i = 0; i < mur1.size(); i++) {
    Mur mur = mur1.get(i);
    mur.display();
    tank1.collisionMur(mur.x, mur.y);
    tank2.collisionMur(mur.x, mur.y);
  }
  tank1.move(); // déplacement des tanks
  tank2.move();
}

//détection de la pression des touuches
void keyPressed() {
  if (key == 'z') {
    orientation1 = 1; // la variable change pour indiquer le changement d'orientation du tank
    tank1.deplacementYu = -1; // déplacement du tank modifié
    tank1.spritep = 1; // change le sprite affiché pour correspondre à l'orientation du tank
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
    bullets1.add(new Tir(tank1.x+tank1.taille/2, tank1.y+tank1.taille/2, color(0), orientation1)); //création d'une nouvelle balle à chaque appui sur la touche tir
  }
  if (keyCode == UP) {
    tank2.deplacementYu = -1;
    tank2.spritep = 1;
    orientation2 = 1;
  }
  if (keyCode == DOWN) {
    tank2.deplacementYd = 1;
    tank2.spritep = 2;
    orientation2 = 2;
  }
  if (keyCode == LEFT) {
    tank2.deplacementXl = -1;
    tank2.spritep = 3;
    orientation2 = 3;
  }
  if (keyCode == RIGHT) {
    tank2.deplacementXr = 1;
    tank2.spritep = 4;
    orientation2 = 4;
  }
  if (keyCode == ENTER) {
    bullets2.add(new Tir(tank2.x+tank2.taille/2, tank2.y+tank2.taille/2, color(0), orientation2));
  }
}

// détecte le relachement d'une touche
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
