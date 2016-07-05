/*
  Koch Snow Flake
  Presiona el numero de iteraciones deseadas.
*/
float dd = 150.0, y = 490.0;
ArrayList<KochLine> segment;
PVector a,b,c,d,e,v,u,v1,v2,v3;
int ct=0;

void setup(){
  size(800,650);
  background(255);
  segment = new ArrayList<KochLine>();
  v1 = new PVector(dd,y);
  v2 = new PVector(width/2,y-(width/2-dd)*1.73);
  v3 = new PVector(width-dd,y);
  segment.add(new KochLine(v1,v2));
  segment.add(new KochLine(v2,v3));
  segment.add(new KochLine(v3,v1));
}

void draw(){
  if(keyPressed){
    background(255);
    ct = key-'0';
  }
  for(int i=0;i<ct;i++)
      generate();
  for(KochLine l : segment)
    l.display();
  reset();
}

void generate(){
  ArrayList next = new ArrayList<KochLine>();
  for(KochLine k : segment){
    a = k.KochA(); 
    b = k.KochB();
    c = k.KochC();
    d = k.KochD();
    e = k.KochE();
    next.add(new KochLine(a,b));
    next.add(new KochLine(b,c));
    next.add(new KochLine(c,d));
    next.add(new KochLine(d,e));
  }
  segment = next;
}

class KochLine{
  PVector p,q;
  KochLine(PVector start, PVector end){
    p = start.get();
    q = end.get();
  }
 
  void display(){
    line(p.x,p.y,q.x,q.y);
  }
 
  PVector KochA(){
     return p.get();  
  }
  
  PVector KochB(){
    v = PVector.sub(q,p);
    v.div(3);
    v.add(p);
    return v;
  }
  
  PVector KochC(){
    u = PVector.sub(q,p);
    u.div(3);
    v = p.get();
    v.add(u);
    u.rotate(-PI/3);
    v.add(u);
    return v;
  }
  
  PVector KochD(){
    v = PVector.sub(q,p);
    v.mult(2/3.);
    v.add(p);
    return v;
  }
  
  PVector KochE(){
    return q.get();
  } 
}

void reset(){
  segment.clear();
  segment.add(new KochLine(v1,v2));
  segment.add(new KochLine(v2,v3));
  segment.add(new KochLine(v3,v1));
}