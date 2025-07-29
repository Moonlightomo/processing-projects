float Pixel_X= 50;
float Pixel_Y= 25;

void setup(){
  frameRate(15);//Set to 15 for testing, you can tweak this later
  fullScreen();
  background(255);
}
void Movement(float sillinessX,float sillinessY){
  if (!mousePressed){ //fucking look at all these fucking if statements
  println(Pixel_X+","+Pixel_Y);
  if (sillinessX < 50){
    Pixel_X= Pixel_X-random(width);
  }else{
    Pixel_X= Pixel_X+random(width);
  }
  if (sillinessY < 50){ // jesus christ 
    Pixel_Y= Pixel_Y-random(height);
  }else{
    Pixel_Y= Pixel_Y+random(height);
  }
  }else{
   return; 
  }
}
void CheckIfMousePressed(){
  if (!mousePressed){
  if (Pixel_X  > width){
    Pixel_X = 100;
  }else{
    if (Pixel_X < 0){ //still going but this time within if statements
      Pixel_X = 0;
    }
  }
  if (Pixel_Y  > height){
    Pixel_Y = 100;
  }else{
   if (Pixel_Y < 0){
     Pixel_Y = 0;
   }
  }
  }else{
    return;
  }
}

void draw(){
  float sillinessX = random(width);
  float sillinessY = random(height);
  int Radius = 10;
  color CircleColorRGB= color(255,255,255);
  Movement(sillinessX,sillinessY);
  CheckIfMousePressed();
  background(255);
  if (!mousePressed){ //there
    Radius = 10;
    CircleColorRGB = color(255,255,255);
  }else{
    Radius = 50;
    CircleColorRGB = color(255,0,0);
  }// let's never do that again
  fill(CircleColorRGB);
  circle(Pixel_X,Pixel_Y,Radius);
  fill(0);
  line(Pixel_X,height,Pixel_X,0);
  line(0,Pixel_Y,width,Pixel_Y);
}
