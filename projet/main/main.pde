void setup() {
  size(1024, 734); 
  starting_game();
  startTimer();
}

void draw() {
  switch(state) {
  case 0:

    break;
  case 1:
    play();
    break;
  case 2:
    endGame();
    break;
  case 3:
    endGameEqual();
    break;
  }
}
