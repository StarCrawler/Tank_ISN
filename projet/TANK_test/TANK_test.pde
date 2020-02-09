Tank tank1 = new Tank(100, 100, #0762eb);
Tank tank2 = new Tank(200, 200, color(0));


void setup() {
  size(1000, 750); 
  background(255);
}

void draw() {
  background(255);
  tank1.display();
  tank2.display();
  tank1.collision(tank2.x, tank2.y);
  tank2.collision(tank1.x, tank1.y);
  tank1.move();
  tank2.move();
}

void keyPressed() {
  if (key == 'z') {
    tank1.deplacementYu = -1;
  }
  if (key == 's') {
    tank1.deplacementYd = 1;
  }
  if (key == 'q') {
    tank1.deplacementXl = -1;
  }
  if (key == 'd') {
    tank1.deplacementXr = 1;
  }
  if (keyCode == UP) {
    tank2.deplacementYu = -1;
  }
  if (keyCode == DOWN) {
    tank2.deplacementYd = 1;
  }
  if (keyCode == LEFT) {
    tank2.deplacementXl = -1;
  }
  if (keyCode == RIGHT) {
    tank2.deplacementXr = 1;
  }
}
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
//création de l'objet tank
class Tank {
  float x;
  float y;
  color couleur;
  int deplacementXr, deplacementXl;
  int deplacementYu, deplacementYd;
  boolean collisionr = false, collisionl = false, collisionu = false, collisiond = false;

  Tank (float newX, float newY, color newCouleur) {
    x = newX;
    y = newY;
    couleur = newCouleur;
  }
  void display() {
    noStroke();
    fill(couleur);
    rect(x, y, 25, 25);
  }
  void move() {
    if (collisionl == false) {
      x = deplacementXr + x;
    }
    if (collisionu == false) {
      y = deplacementYd + y;
    }
    if (collisiond == false) {
      y = deplacementYu + y;
    }
    if (collisionr == false) {
      x = deplacementXl + x;
    }
  }
  void collision(float otherX, float otherY) {
    if (x+25 >= otherX && y+25 >= otherY  && y <= (otherY +25) && x+25 <= otherX) {
      collisionl = true;
    } else {
      collisionl = false;
    }
    if (y+25 >= otherY && x+25 >= otherX && x <= (otherX+25) && y+25 <= otherY) {
      collisionu = true;
    } else {
      collisionu = false;
    }
    if (y <= otherY+25 && x+25 >= otherX && x <= (otherX+25) && y >= otherY+25) {
      collisiond = true;
    } else {
      collisiond = false;
    }
    if (x <= otherX+25 && y+25 >= otherY && y <= (otherY+25) && x >= otherX+25 ) {
      collisionr = true;
    } else {
      collisionr = false;
    }
  }
}
