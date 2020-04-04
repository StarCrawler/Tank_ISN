int time;
int min, sec;


void startTimer(){
  time = millis();
  min = 0;
  sec = 5;
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
      println("Plus de temps");
      stop();
    }
  }
      println(min,":",sec);
      println(time);
      println(millis());
}
