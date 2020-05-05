//détection de la pression des touuches
void keyPressed() {
  if (key == 'z') {
    tank1.deplacementYu = -1; // déplacement du tank modifié
    if (tank1.deplacementXr == 1) {
      tank1.spritep = 5;
    } else if (tank1.deplacementXl == -1) {
      tank1.spritep = 6;
    } else {
      orientation1 = 1; // la variable change pour indiquer le changement d'orientation du tank
      tank1.spritep = 1; // change le sprite affiché pour correspondre à l'orientation du tank
    }
  }
  if (key == 's') {
    tank1.deplacementYd = 1;
    if (tank1.deplacementXr == 1) {
      tank1.spritep = 7;
    } else if (tank1.deplacementXl == -1) {
      tank1.spritep = 8;
    } else {  
      orientation1 = 2;
      tank1.spritep = 2;
    }
  }
  if (key == 'q') {
    tank1.deplacementXl = -1;
    if (tank1.deplacementYu == -1 && tank1.deplacementXr == 0) {
      tank1.spritep = 6;
    } else if(tank1.deplacementYd == 1 && tank1.deplacementXr == 0){
      tank1.spritep = 8;
    }else {
      orientation1 = 3;
      tank1.spritep = 3;
    }
  }
  if (key == 'd') {
    tank1.deplacementXr = 1;
    if (tank1.deplacementYu == -1 && tank1.deplacementXl == 0) {
      tank1.spritep = 5;
    } else if(tank1.deplacementYd == 1 && tank1.deplacementXl == 0){
      tank1.spritep = 7;
    }else {
      orientation1 = 4;
      tank1.spritep = 4;
    }
  }
  if (key == 'e') {
    long nowpress = millis(); //récupération de la valeur du temps écoulé
    //comparaison de temps pour déterminer si le cooldown est écoulé
    if (nowpress > (lastpress1 + cooldown)) {
      bullets1.add(new Tir(tank1.x+tank1.taille/2, tank1.y+tank1.taille/2, orientation1)); //création d'une nouvelle balle à chaque appui sur la touche tir
      lastpress1 = nowpress; //mise a jour du temps lors de la dernière pression
    }
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
    long nowpress = millis();
    if (nowpress > (lastpress2 + cooldown)) {
      bullets2.add(new Tir(tank2.x+tank2.taille/2, tank2.y+tank2.taille/2, orientation2));
      lastpress2 = nowpress;
    }
  }
}

// détecte le relachement d'une touche
void keyReleased() {
  if (key == 'z') {
    tank1.deplacementYu = 0; //remise a zéro de la variable de déplacement
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
