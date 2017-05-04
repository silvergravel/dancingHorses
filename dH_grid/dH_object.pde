class dH{

 
  
  PShape[] icons = new PShape[2];
  int posX;
  int posY;
  
  int size = horseSize;
  
  int[] flip = {1,-1};
  int flipType = 0;
  float rotate[] = {-PI/7,-PI/5,0,PI/5,PI/7};
  int rotateAmt = 0;
  color fill[] = new color[totColors];
  int fillType = 0;

  long pMillis = 0;
  long pMillis2;
  
  int iconNum;


dH(int posX_, int posY_, long pMillis2_, int iconNum_){

  
  icons[0] = loadShape("horse.svg");
  icons[1] = loadShape("umbrella.svg");
  
  pMillis2 = pMillis2_;
  
  posX = posX_;
  posY = posY_;
  
  iconNum = iconNum_;
  
  ////set 1
  //fill[0] = color(0,255,255); //cyan
  //fill[1] = color(235,0,91); //pink
  //fill[2] = color(226,182,82); //ochre
  //fill[3] = color(229,217,241); //indigo
  //fill[4] = color(0,67,210); //blue
  
  //set 2
  fill[0] = color(238,61,110); //pink
  fill[1] = color(113,156,191); //faded blue
  fill[2] = color(161,255,51); //green
  fill[3] = color(255,255,51); //yellow
  
 
}

void display(){

  icons[iconNum].disableStyle();
  noStroke();
  pushMatrix();
  translate(posX,posY);
  
  //flipType = flipType_;
  //rotateAmt = rotateAmt_;
  //fillType = fillType_;
  
  scale(flip[flipType],1);
  rotate(rotate[rotateAmt]);
  fill(fill[fillType]);
  shapeMode(CENTER);
  shape(icons[iconNum], 0, 0, size, size);
  popMatrix();

}

}