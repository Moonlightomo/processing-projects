import processing.sound.*;
BrownNoise noise;
SinOsc Beep;

void setup() {
  size(640, 360);
  background(255);
  Beep = new SinOsc(this)
  Beep.freq(750)
  noise = new BrownNoise(this);
  noise.play();
}      

void draw() {   
  
  if (key == 'z' || key == 'Z'){
    noise.stop();
    Beep.play()
    Delay(20)
    Beep.stop()
    return;
  }
  noise.play();
  Beep.stop()
}
