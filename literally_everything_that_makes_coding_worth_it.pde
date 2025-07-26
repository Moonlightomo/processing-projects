
String clocktick = "tick";
int counter = 0;
int fib = 1;  
int storage = 0;
StringList order;

void setup(){
 size(100,100); 
 println("clock"+","+"counter"+","+"command"+","+"time"+","+"fib");
 order= new StringList();
 order.append("Read");
 order.append("Decode");
 order.append("Execute");
 frameRate(1);
}
/* We live in a cruel world
i watch my doctors and dentists still use WINDOWS FUCKING XP
use something else other than the one thing that'll get u fucked over the hardest
fuck those people and their bosses
like seriously, it's 2025
*/ // - MoonlightUwU
void tick(){
  if (clocktick == "tick"){
    clocktick = "tock";
  }else{
    clocktick = "tick";
  }
}
void count(){
  if (clocktick == "tick"){
    counter = counter+1;
  }else{
    counter = counter+1;
  }
  if (counter == 3){
   counter=0;
  }
}
void fibo(){
  fib = storage+fib;
  storage = fib;
  if (fib > 1000000 && storage > 1000000){
    fib = 1;
    storage = 0;
  }
  return;
}
void draw(){
  String command= order.get(counter);
  println(clocktick+" , "+counter+" , "+command+" , "+floor(millis()/1000)+" , "+fib);
  tick();
  count();
  fibo();
}
