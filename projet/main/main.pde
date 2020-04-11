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
  }
}
