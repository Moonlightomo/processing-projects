import processing.sound.*;
BrownNoise noise;
SinOsc Beep;

void setup() {
  size(640, 360);
  background(255);
  Beep = new SinOsc(this);
  Beep.freq(750);
  noise = new BrownNoise(this);
  noise.play();
}      
void Morse(){
  if (key == 'z' || key == 'Z'){
    Beep.play();
    delay(20);
    Beep.stop();
  }
}
void draw() {   
  
  if (keyPressed == true){
    noise.stop();
    Morse();
    return;
  }
  noise.play();
  Beep.stop();
}
