//Anna Fan
//block 1-1b
//Nov 1, 2020

import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;


//Brick Vriables
int [] x;
int [] y;
int n;
int brickd;
int tempx, tempy;
boolean[] alive;

//Mode varisables
int mode;
final int INTRO = 1;
final int GAME  = 2;
final int PAUSE = 3;
final int GAMEOVERWIN = 4;
final int GAMEOVERLOSE = 5;

//intro GUI
float a;

//Game entities
float bx, by, bd, vx, vy, px, py, pd;

//Keyboard variables
boolean akey, dkey;

//scoring
int score, timer;
int life;

//gif
PImage[] gif;
int numberOFframes;
int i2;
int f;

//sound variables
Minim minim;
AudioPlayer theme, gameover, pause, click, jump;



void setup() {
  size(800, 800);
  mode = INTRO;
  
  //set up paddle and ball
  bx = width/2;
  by = height-200;
  bd = 10;
  px = width/2;
  py = height;
  pd = 100;
  vx = 0;
  vy =1;
  
  brickd = 50;
  n = 49;
  x = new int[n];
  y = new int[n];
  alive = new boolean[n];
  tempx = 100;
  tempy = 50;
  
  int i = 0;
  while (i < n) {
  x[i] = tempx;
  y[i] = tempy;
  alive[i] = true; 
  tempx = tempx + 100;
  if (tempx == width) {
    tempx = 100;
    tempy = tempy + 60;
  }
  i=i+1;
    
  }


  //initialize key
  akey = dkey = false;
  
  //initialize life
  life = 3;
  score = 0;
  timer = 0;
  
  //gif
  numberOFframes = 99;
  gif = new PImage[numberOFframes];
  int i2 = 0;
  while( i2 < numberOFframes) {
   gif[i2] = loadImage("frame_"+i2+"_delay-0.04s.gif");
    i2++;
  } 
  size(800, 800);
  
  //font
  blueEye = createFont("Blue Eyes - Personal Use.otf", 200);
  CreamCake = createFont("Cream Cake.ttf",200);
  baylandDEMO = createFont("Bayland DEMO.otf", 200);
  heaters = createFont("Heaters.otf", 200);
  lemonYellow = createFont("DK Lemon Yellow Sun.otf", 200);
  
  //minim
  minim = new Minim(this);
  theme = minim.loadFile("theme.mp3");
  gameover = minim.loadFile("gameover1.mp3");
  pause = minim.loadFile("pause.mp3");
  click = minim.loadFile("click.mp3");
  jump = minim.loadFile("jump.mp3");
}

void draw() {
  if (mode == INTRO) {
    intro();
  } else if (mode == GAME) {
    game();
  } else if (mode == PAUSE) {
    pause();
  } else if ( mode == GAMEOVERWIN) {
    gameoverwin();
  } else if (mode == GAMEOVERLOSE) {
    gameoverlose();
  } else { 
    println("MODE ERROR in draw : " + mode);
  }
 }
