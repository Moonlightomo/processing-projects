void setup() {
 size(500,500);
 windowResizable(true);
 background(100,10,000);
}

void draw() {
  //script for a basic timer with no start or stop that counts milliseconds, seconds, minutes, and hours
  int centerX = width/2;
  int centerY = height/2;
  int ms = millis();
  int s = ms/1000;
  int min = s/60;
  int h = min/60;
 background(100,10,000);
 
 fill(255,255,255);
 textSize(25);
 text(ms,centerX-100,centerY+100);
 text(s,centerX-75,centerY+75);
 text(min,centerX-50,centerY+50);
 text(h,centerX,centerY-50); //hour is off cuz idk why, it kinda just refuses to move down to its correct position
}

//posted on git and yt as a vid >;3
