import processing.sound.*;
BrownNoise noise;

void setup() {
  size(640, 360);
  background(255);

  noise = new BrownNoise(this);
  noise.play();
}      

void draw() {   
  
  if (keyCode != 32){
    noise.stop();
    return;
  }
  noise.play();
}
