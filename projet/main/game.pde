void starting_game() {
  asset_load(); // chargement des assets du jeu
  map1(); // création de la liste contenant les informations de sprite 
  
  //création des boites de collisions pour les murs en fonction de la valeur contenu dans les cases de la liste map1
  for ( int i = 3; i < largeur; i++) {
    for ( int j = 0; j < hauteur; j++) {
      if (map1[i][j] == 1 || map1 [i][j] == 13) {
        mur1.add(new Mur(posX, posY)); //ajout du boite de collision pour un mur si la valeur de la case correspond
      }
      posX = posX + 32;
    }
    posY = posY + 32;
    posX = 0;
  }
}

void play() {
  traceMap1(); // affichage des sprites de la map
  // verification des tableaux des balles
  for (int i = 0; i < bullets1.size(); i++) {
    Tir tir = bullets1.get(i);
    tir.display(); // affichage des balles
    tir.update(); // maj de leur position
    if (tir.terminate(tank2.x, tank2.y)) {
      bullets1.remove(i); //destruction de l'objet balle quand contact avec tank ennemis
      tank2.life --;
      print(tank2.life);
    }
    for (int j = 0; j < mur1.size(); j++) {
      Mur mur = mur1.get(j);
      // verification de la position des balles pour détecter d'éventuelles collisions
      if (mur.collisionTir(tir.x, tir.y)) {
        bullets1.remove(i); //destruction de l'objet balle quand contact avec un mur
      }
    }
  }
  for (int i = 0; i < bullets2.size(); i++) {
    Tir tir = bullets2.get(i);
    tir.display();
    tir.update();
    if (tir.terminate(tank1.x, tank1.y)) {
      bullets2.remove(i);
      tank1.life --;
      print(tank1.life);
    }
    for (int j = 0; j < mur1.size(); j++) {
      Mur mur = mur1.get(j);
      if (mur.collisionTir(tir.x, tir.y)) {
        bullets2.remove(i);
      }
    }
  }
  tank1.display(); // affichage des tanks 
  tank2.display();
  tank1.collision(tank2.x, tank2.y); // détection des collisions entre les deux tanks
  tank2.collision(tank1.x, tank1.y);
  //détection des collisions des tanks avec les murs
  for (int i = 0; i < mur1.size(); i++) {
    Mur mur = mur1.get(i);
    tank1.collisionMur(mur.x, mur.y);
    tank2.collisionMur(mur.x, mur.y);
  }
  tank1.move(); // déplacement des tanks
  tank2.move();
}
