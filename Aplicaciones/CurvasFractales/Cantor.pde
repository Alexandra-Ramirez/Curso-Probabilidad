/*
  El conjunto de Cantor usando recursión.
*/

void setup(){
  size(1000,220); 
  background(255);
}

void draw(){
  Cantor(20,width-20,20,7); 
}

void Cantor(float px,float x,float y,float w){
  strokeWeight(w);
  line(px,y,x,y);
  y += 25;
  w -= 1;
  if(x-px>=1){
    Cantor(px,px+(x-px)/3-0.2,y,w); 
    Cantor(px+(x-px)*2/3-0.2,x,y,w);
 }
}
