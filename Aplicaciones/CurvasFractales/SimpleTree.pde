void setup(){
  size(800,800); 
  background(0);
}

void draw(){
  stroke(255);
  strokeWeight(2);
  translate(width/2,height);
  branch(0,200); 
}

void branch(int ct,float d){
  if(ct>=5)
    return;
  line(0,0,0,-d);
  translate(0,-d);
 
  pushMatrix();
  rotate(PI/6);
  branch(ct+1,d*2/3.);
  popMatrix();
  
  pushMatrix();
  rotate(-PI/6);
  branch(ct+1,d*2/3.);
  popMatrix();
}