Table tableau; 
int hauteur=32; //Nombre de colonnes de l'aire de jeu//
int largeur=23; //Nombre de lignes de l'aire de jeu//
PImage img[]=new PImage[14]; //Liste de taille 14 qui aura les images//
int niveau[][]=new int[largeur][hauteur]; //Tableau correspondant avec les valeurs du csv//
int x,y,numeroImage;




void setup() {
  img[0] = loadImage("00.png"); //Chargement de l'image png qui aura la valeur 0 sur le csv//
  img[1] = loadImage("01.png");
  img[11] = loadImage("11.png");
  img[12] = loadImage("12.png");
  img[13] = loadImage("13.png");
  
  size(1024, 736); //Taille de l'écran de jeu//
  background(255);

  tableau=loadTable("data/Map1.csv", "header"); //Permet de faire le lien entre le csv etla fenêtre du jeu//
  
  for (y=3; y<largeur; y++) { //Permet de décaler la map csv de 3 lignes en partant du haut// 
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
  int numeroDessin; //Prend la valeur des images de la liste en fonction du csv//
  for (y=0; y<largeur; y++) { //Les variables for permettent d'afficher la bonne image//   
    for (x=0; x<hauteur; x++) {
      numeroDessin=niveau[y][x]; //Prend la valeur dans la Liste et la met dans numeroDessin//
      print(numeroDessin+","); //Affiche les images en question//
      image(img[numeroDessin], x*32, y*32); //Définit la taille d'une cellule du csv en image 32 par 32 sur le jeu//
    }
    println();
  }
}
