PShape horse;
int flip[] = {1,-1};
int flipType = 0;
float rotate[] = {-PI/4,0,PI/4};
int rotateType = 0;
color fill[] = new color[3];
int fillType = 0;

long pMillis = 0;

PImage horse2;

void setup() {
  size(800, 800);
  // The file "bot.svg" must be in the data folder
  // of the current sketch to load successfully
  horse = loadShape("horse.svg");
  
  fill[0] = color(255,0,0);
  fill[1] = color(0,255,0);
  fill[2] = color(0,0,255);
   
}

void draw() {
  background(255);
  horse.disableStyle();
  noStroke();
  translate(400,400);
  if(millis() - pMillis > 400){
  flipType = int(random(0,2));
  rotateType = int(random(0,3)); 
  fillType = int(random(0,3)); 
  pMillis = millis();
  }
  scale(flip[flipType],1);
  rotate(rotate[rotateType]);
  fill(fill[fillType]);
  shapeMode(CENTER);
  shape(horse, 0, 0, 100, 100);
  
}