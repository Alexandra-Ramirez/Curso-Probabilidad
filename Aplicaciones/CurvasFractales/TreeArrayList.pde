ArrayList<Tree> current,next;
PVector ss,ee,a,b,c,m;
float d = 200, theta = PI/6;
int ct;

void setup(){
  size(800,800);
  background(0);
  current = new ArrayList<Tree>();
  next = new ArrayList<Tree>();
  ss = new PVector(width/2,height);
  ee = new PVector(width/2,height-d);
  current.add(new Tree(ss,ee));
  next = current;
}

void draw(){
  stroke(255);
  if(keyPressed){
    background(0);
    ct = key-'0';
  }
  for(int i=0;i<ct;i++)
    generate();
  for(Tree l: current)
    l.display();
  reset();
}

void generate(){
  ArrayList tmp = new ArrayList<Tree>();
  for(Tree k: next){
    a = k.Aleft();
    b = k.Bmid();
    c = k.Cright();
    tmp.add(new Tree(b,a));
    tmp.add(new Tree(b,c));
  }
  next = tmp;
  for(Tree k: next)
    current.add(k);
}

class Tree{
  PVector start,end;
  Tree(PVector _start, PVector _end){
   start = _start;
   end = _end;
  }
  
  void display(){
   line(start.x,start.y,end.x,end.y); 
  }
  
  PVector Aleft(){
    m = PVector.sub(end,start);
    m.mult(2/3.);
    m.rotate(-theta);
    m.add(end);
    return m;
}
  
  PVector Bmid(){
    return end.get();
  }
  
  PVector Cright(){
    m = PVector.sub(end,start);
    m.mult(2/3.);
    m.rotate(theta);
    m.add(end);
    return m;
  }
}

void reset(){
  current.clear();
  next.clear();
  current.add(new Tree(ss,ee));
  next = current;
}