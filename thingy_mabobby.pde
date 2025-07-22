//warning, very amateur code 
//if you cannot resist the urge to laugh, you may wanna leave
Table SavedScores;
Table Previous;

void setup(){
  size(800,400);
  Previous = loadTable("Save.csv","header,csv");
  int score1=Previous.getInt(0,"check1");
  int score2=Previous.getInt(0,"check2");
  windowTitle("ʩ͡ʢ͜ʘ͡ʡʍ̜̟͡ɴ̼͜p̚͡ʔ͡ʈ͡ǂ̴"+"   "+"Score:"+score1+","+score2);
}


void thing(){
  delay(100);
  SavedScores = new Table();
  SavedScores.addColumn("check1");
  SavedScores.addColumn("check2");
  TableRow score= SavedScores.addRow();
  int check1= floor(random(100));
  int check2= floor(random(100));
  SavedScores.addRow(score);
  score.setInt("check1",check1);
  score.setInt("check2",check2);
  print(check1+"     ");
  print(check2+"     ");
  textSize(50);
  text(check1,width/2-100,height/2+50);
  text(check2,width/2-100,height/2+100);
  if (check1 ==  check2){
    windowTitle("Saving...");
    saveTable(SavedScores,"data/Save.csv");
    exit();
  }
  if (check1 == sqrt(check2)){
    windowTitle("Saving...");
    saveTable(SavedScores,"data/Save.csv");
    exit();
  }
  if (check2 == sqrt(check1)){
    windowTitle("Saving...");
    saveTable(SavedScores,"data/Save.csv");
    exit();
  }
}

void draw(){
  color RGB=color(94,154,164);
  background(RGB);
  textSize(25);
  text("ʩ͡ʢ͜ʘ͡ʡʍ̜̟͡ɴ̼͜p̚͡ʔ͡ʈ͡ǂ̴",width/2-100,height/2);
  textSize(50);
  thing();
  
}
