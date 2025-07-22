//warning, very amateur code 
//if you cannot resist the urge to laugh, you may wanna leave
//Note: this is for saving final scores and not HIGH scores

Table SavedScores;
Table Previous; //Cool :D

void setup(){
  size(800,400); //Size does'nt really matter that much                                                                                                                                                                                                                                                                                  That's what she said >:3
  Previous = loadTable("Save.csv","header,csv");
  int score1=Previous.getInt(0,"check1");
  int score2=Previous.getInt(0,"check2");
  windowTitle("ʩ͡ʢ͜ʘ͡ʡʍ̜̟͡ɴ̼͜p̚͡ʔ͡ʈ͡ǂ̴"+"   "+"Score:"+score1+","+score2); //This bullshit took me 5 HOURS OF MY LIFE TO DEBUG I WANT MY LIFE BACK
}


void thing(){ //void can kiss my ass
  delay(100); //prevents the code from instantly killing itself
  SavedScores = new Table();
  SavedScores.addColumn("check1");
  SavedScores.addColumn("check2");
  TableRow score= SavedScores.addRow();
  int check1= floor(random(100)); // floor? thats what i ate when i fell over my macbook :3
  int check2= floor(random(100));
  SavedScores.addRow(score);
  score.setInt("check1",check1);
  score.setInt("check2",check2);  //saving took longer than the loading.. HOW!?!?
  print(check1+"     ");
  print(check2+"     ");
  textSize(50);
  text(check1,width/2-100,height/2+50);
  text(check2,width/2-100,height/2+100);
  if (check1 ==  check2){
    windowTitle("Saving..."); // fake illusion of loading and slow code
    delay(1000); //The delays aren't necessary, i just thought it would be funny
    saveTable(SavedScores,"data/Save.csv");
    exit();
  }
  if (check1 == sqrt(check2)){
    windowTitle("Saving...");
    delay(1000);
    saveTable(SavedScores,"data/Save.csv");
    exit();
  }
  if (check2 == sqrt(check1)){
    windowTitle("Saving...");
    delay(1000);
    saveTable(SavedScores,"data/Save.csv");
    exit();
  }
}

void draw(){
  color RGB=color(94,154,164);
  background(RGB);
  textSize(25);
  text("ʩ͡ʢ͜ʘ͡ʡʍ̜̟͡ɴ̼͜p̚͡ʔ͡ʈ͡ǂ̴",width/2-100,height/2); //you need to have the apple fond and a macbook to see this correctly
  textSize(50);
  thing(); //funny function
  
}


//UR AD HERE FUCKER (you need to know 12 year old YT if you wanna get the ref)
