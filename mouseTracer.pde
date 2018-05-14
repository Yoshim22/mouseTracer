MousePoint mousePoint;

void setup(){
  size(2400,1200);
  noStroke();
  smooth();
  fill(255,0);
}

void draw(){
  fill(255,5);
  rect(0,0,width,height);
  fill(random(100,255),random(100,255),random(100,255));
  mousePoint = new MousePoint(mouseX,mouseY);
  mousePoint.display();
}

class MousePoint{
  float x;
  float y;
  float diameter;
  
  MousePoint(float nowX, float nowY){
    x = nowX;
    y = nowY;
    diameter = dist(mouseX, mouseY, pmouseX, pmouseY)/1.5;
  }
  
  void display(){
    ellipse(x,y,diameter,diameter);
  }
}
