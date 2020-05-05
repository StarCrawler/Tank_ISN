import processing.sound.*;
SoundFile file;

void setup() {
  size(640, 360);
  background(255);

  file = new SoundFile(this, "Tesla-Jingle.mp3");
  file.loop();
}
