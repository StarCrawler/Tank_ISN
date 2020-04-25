//variable game
Tank tank1 = new Tank(65, 257,10,10); // création du tank du premier joueur
Tank tank2 = new Tank(200, 200,914,10); // création du tank du deuxième joueur

ArrayList<Mur> mur1 = new ArrayList<Mur>(); // création du tableau modulaire des murs

ArrayList<Tir> bullets1 = new ArrayList<Tir>(); // création du tableau modulaire des balles du joueur 1
ArrayList<Tir> bullets2 = new ArrayList<Tir>(); // création du tableau modulaire des balles du joueur 2

int orientation1 = 4; // variables indiquant l'orientation du tank
int orientation2 = 4;

int posX = 0;  // variables permattant de positionner les boites de collision sur la map
int posY = 96;

long lastpress1, lastpress2; // variables de sauvegarde du temps pour le système de tir

int cooldown = 1500; // variable d'attente entre chaque tir

//variable asset_load
PImage moveL, moveR, moveU, moveD, tir, lifeFull; // variable des sprites du jeu

//variable map
Table tableau;
int hauteur=32;
int largeur=20;
PImage img[]=new PImage[14];
int map1[][]=new int[largeur][hauteur];
int x, y, numeroImage;
int mapX = 0;
int mapY = 3*32;


//variable main

int state = 1;
