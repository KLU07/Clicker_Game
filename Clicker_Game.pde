//SETUP 
int mode;
final int INTRO = 0; //final will lock the values in place, cannot INTRO+1
final int GAME = 1;
final int PAUSE = 2;
final int GAMEOVER = 3;

//TARGET INT
float x;
float y;
float vx; //velocity of x
float vy; //velocity of y

//LIVES
int score;
int lives;


//================================================================================
void setup() {
  x = 400;
  y = 400;
  score = 0;
  lives = 3;
  vx = random(-4,4); //chose random float (decimal) number between -4 and 4 
  vy = random(-4,4); 

  
  size(800,800);
  mode = INTRO;
  textAlign(CENTER,CENTER); //will centre text align at coordinates

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
    
  } else {
    println("Error: Mode = " + mode); //will tell you where the error is
  }
  
}
