int red= 255;
int time =0;
int diameter= 50;

void setup(){
  size(400,400);
}
void draw(){
  time= time+1;
  red = int(128 * (1 + sin(time * 2 * PI / frameRate / 20)));
  diameter = int(50 * (1 + sin( time * 2 * PI / frameRate / 5))); 
 
  noStroke();
  fill(red,0,0, 50);
  ellipse(mouseX,mouseY,diameter,diameter);
}
  
