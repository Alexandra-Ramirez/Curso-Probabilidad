int numberOfIterations;
float d = 355;

void setup(){
  size(700,700);
  background(255);
  fill(0);
  noStroke();
  rectMode(CENTER);
}

void draw(){
  if(keyPressed){
    background(255);
    numberOfIterations = key-'0'; 
  }
  T_square(width/2,height/2,d,1);
}

void T_square(float x,float y,float len,int ct){
  if(ct<=numberOfIterations){
    rect(x,y,len,len);
    T_square(x-len/2,y+len/2,len/2,ct+1);
    T_square(x+len/2,y+len/2,len/2,ct+1);
    T_square(x-len/2,y-len/2,len/2,ct+1);
    T_square(x+len/2,y-len/2,len/2,ct+1);
  }
}