PImage title;
Bouton start = new Bouton(412,400,200,50, "Jouer");
Bouton para = new Bouton(412,460,200,50, "Paramètres");
Bouton stop = new Bouton(412,520,200,50, "Quitter");

void setup(){
  size(1024, 736);
  background(#4E6F17);
  
  title = loadImage("Titre.png");
}

void draw(){
  fill(0);
  rect(200, 50, 624, 200);
  image(title,200,50); 
  start.display();
  para.display();
  stop.display();
}
