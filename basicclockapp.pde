void setup() {
  size(500,500);
  windowResizable(true);
}

void draw() {
  int m=millis();
  int s=m*1000;
  background(100);
  textSize(25);
  fill(200);
  text(s,width/2,height/2);
}
  
