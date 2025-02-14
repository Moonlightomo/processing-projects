// notes for people who wanna use this...
// sigma

void setup(){
  size(1000,1000)
;}

void draw(){
  int centx = width/2;
  int centy = height/2;
  int dist = abs(centx+centy-mouseX-mouseY);
  strokeWeight(10);
  background(100);
  fill(50);
  rect(mouseX-50,mouseY-50,100,100);
  textSize(25);
  fill(200);
  text(mouseX,mouseX+10,mouseY+10);
  textSize(25);
  fill(200);
  text(mouseY,mouseX+10,mouseY-10);
  textSize(25);
  fill(200);
  text(dist,mouseX+10,mouseY+30);
  line(centx,centy,mouseX,mouseY)
;}
