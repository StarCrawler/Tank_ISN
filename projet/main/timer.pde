int time;
int min, sec;


void startTimer(){
  time = millis();
  min = 3;
  sec = 0;
}

void timer(){
  if(time+1000 <= millis()){
    if(sec == 0){
      min --;
      sec = 59;
      time = millis();
    }else{
      sec --;
      time = millis();
    }

    if(sec == 0 && min == 0){
      text("Plus de temps",512,367);
      stop();
    }
  }
      textAlign(CENTER);
      fill(0);
      text(str(min)+":"+str(sec),512,10);
}
