PImage background1Img;
PImage background2Img;
PImage treasureImg;
PImage planeImg;
PImage hpImg;
PImage enemyImg;

float enemyX,enemyY,treasureX,treasureY,backgroundX,backgroundY,hpX,hpY,planeX,planeY;


void setup(){
  size(640,480);
  background1Img=loadImage("img/bg1.png");
  background2Img=loadImage("img/bg2.png");
  hpImg=loadImage("img/hp.png");
  enemyImg=loadImage("img/enemy.png");
  treasureImg=loadImage("img/treasure.png");
  planeImg=loadImage("img/fighter.png");
  treasureX=floor(random(0,600));
  treasureY=floor(random(0,440));
  backgroundX=640;
  backgroundY=1280;
  enemyX=20;
  enemyY=240;
  hpX=20;
  hpY=20;
  planeX=floor(random(0,600));
  planeY=floor(random(0,440));
  }

void draw(){
  imageMode(CORNERS);
  image(background1Img,backgroundX-640,0,backgroundX,480);
  image(background2Img,backgroundY-640,0,backgroundY,480);
  fill(220,0,0);
  rectMode(CORNERS);
  rect(30,20,225,40);
  image(hpImg,hpX,hpY);
  image(enemyImg,enemyX,enemyY);
  image(treasureImg,treasureX,treasureY);
  image(planeImg,planeX,planeY);

  enemyX=enemyX+10;
  
  backgroundX=backgroundX+1;
  backgroundY=backgroundY+1;
  backgroundX=backgroundX%1280;
  backgroundY=backgroundY%1280;
  if(enemyX>640){
       enemyX=20;
       enemyY=240;
    }
}
