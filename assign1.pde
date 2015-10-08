
PImage fighter;
PImage enemy;
PImage treasure;
PImage HP;
PImage background1;
PImage background2;
PImage background3;

int background1x;
int background2x;
int background3x;
int treasurex;
int treasurey;
int x;
int y;

void setup(){
  size(641,482);
  
  // enemy 
  enemy = loadImage("img/enemy.png");
  x = 30;
  y = floor(random(30,410));
  
  // treasure 
  treasure = loadImage("img/treasure.png");
  treasurex = floor(random(15,340));
  treasurey = floor(random(30,440));
  
  // fighter
  fighter = loadImage("img/fighter.png");
  
  // HP
  HP = loadImage("img/hp.png");
  
  // BG img
  
  background1x = 0 ;
  
  background1 = loadImage("img/background1.png");
  
  background2 = loadImage("img/background2.png");
  
  background3 = loadImage("img/background1.png");
  
  
}

void draw(){
 
  background2x = background1x - 636;
  background3x = background2x - 636;
  background1x = (background1x += 3) % 1280;
  image(background1,background1x,0);
  image(background2,background2x,0);
  image(background1,background3x,0);
  
  
  
  
  
  rectMode(CENTER);
  fill(255,0,0);
  rect(109,15,195,25);
  
  image(fighter,580,200);
  x = (x += 5) % width;
  image(enemy,x+3,y);
  image(treasure,treasurex,treasurey);
  image(HP,5,5);
 
   
}
