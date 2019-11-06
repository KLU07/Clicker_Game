int mode;
final int INTRO = 0; //final will lock the values in place, cannot INTRO+1
final int GAME = 1;
final int PAUSE = 2;
final int GAMEOVER = 3;


void setup() {
  size(800,800);
  mode = INTRO;
  textAlign(CENTER,CENTER); //will centre text align at coordinates

}


void draw() {
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
