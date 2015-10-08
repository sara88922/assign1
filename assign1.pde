
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
  size(640,480);
  
  enemy = loadImage("img/enemy.png");
  x = 30;
  y = floor(random(30,410));
  
  treasure = loadImage("img/treasure.png");
  treasurex = floor(random(15,340));
  treasurey = floor(random(30,440));
  
  fighter = loadImage("img/fighter.png");
  
  HP = loadImage("img/hp.png");
  

  background1x = 0 ;
  
  background1 = loadImage("img/bg1.png");
  
  background2 = loadImage("img/bg2.png");
  
  background3 = loadImage("img/bg1.png");
  
  
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
