ArrayList<dH> dh;



int totRow = 11;
int totCol = 11;

int xGap = 70;
int yGap = 70;

int offset = 50;

int horseSize = 30;
int totColors = 4;
int totAngles = 5;

int frequency = 300;


void setup() {
  size(800, 800);
  
  dh = new ArrayList<dH>();
  
  for(int i = 0 ; i < totRow ; i++){
    for(int j = 0 ; j < totCol ; j++){
  dh.add(new dH(offset+xGap*i, offset+yGap*j, int(random(1000,3000)), (totRow*i + j)%2));
  }
  }
  
  
   
}

void draw() {
  background(112,111,110);
  
  
  
  
  
  for(dH d : dh){
  
    if(millis() - d.pMillis > frequency){
  d.flipType = int(random(0,2));
  d.rotateAmt = int(random(0,totAngles)); 
  
  d.pMillis = millis();
  }
  
  if(millis() - d.pMillis2 > 1000){
  d.fillType = int(random(0,totColors)); 
  d.pMillis2 = millis();
  }
     
  d.display();
  }
  
}