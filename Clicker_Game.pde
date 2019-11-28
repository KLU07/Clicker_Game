import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;


//MINIM VARIABLES
Minim minim; //toolbox of functions to load files
AudioPlayer bump; //AudioPlayer to import individual sound effects
AudioPlayer coin;
AudioPlayer theme;
AudioPlayer gameover;


//SETUP 
int mode;
final int INTRO = 0; //final will lock the values in place, cannot INTRO+1
final int GAME = 1;
final int PAUSE = 2;
final int GAMEOVER = 3;
final int OPTIONS = 4;
final int YES = 5;
final int NO = 6;


//TARGET INT
float x;
float y;
float vx; //velocity of x
float vy; //velocity of y


//SCORE AND LIVES
int score;
int lives;


//IMAGE
PImage toast;
PImage baguette;
PImage croissant;

//================================================================================
void setup() {
//TARGET MOVEMENT   
  x = 400;
  y = 400;
  score = 0;
  lives = 3;
  vx = random(-4,4); //chose random float (decimal) number between -4 and 4 
  vy = random(-4,4); //subtracting from y makes it go up
  
  
//SETUP
  size(800,800);
  mode = INTRO;
  textAlign(CENTER,CENTER); //will centre text align at coordinates


//LOADING SOUND FILES
  minim = new Minim(this);
  coin = minim.loadFile("coin.wav");
  bump = minim.loadFile("bump.wav");
  gameover = minim.loadFile("gameover.wav");
  theme = minim.loadFile("theme.mp3");
  

//IMAGE
  toast = loadImage("bread.png");
  baguette = loadImage("baguette.png");
  croissant = loadImage("croissant.png");
}

//================================================================================
void draw() { //picks which screen to go to

  if (mode == INTRO) {
    intro();
    
  } else if (mode == GAME) {
     game();
     
  } else if (mode == PAUSE) {
    pause();
    
  } else if (mode == GAMEOVER) {
    gameover();
    
  } else if (mode == OPTIONS) {
    options();
    
  }else if (mode == YES) {
    yes();
    
  } else if (mode == NO) {
    no();
    
  }  else {
    println("Error: Mode = " + mode); //will tell you where the error is
  }  
  
}
