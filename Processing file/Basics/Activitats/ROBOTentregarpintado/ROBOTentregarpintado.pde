int x = 250;
int y = 50;
void setup(){
  size(800,800);
  background(255);
  
}

void drawFace(){
  strokeWeight(5);
  fill(200);
  rect (x, y, 300, 200);
  fill(255);
  circle(x+80,y+60, 70);
  fill(0);
  rect(x+70,y+50, 20,20);
  fill(255);
  circle(x+220,y+60, 70);
  fill(0);
  rect(x+210,y+50, 20,20);

}
void drawNeck(){
  fill(200);
  triangle(x+50,250+y,x+150,y+200,x+250,y+250);
  //triangle(200,150,200,125,250,150);

}
void drawBody(){
  fill(255,131,0);
  rect (x, y+250,300,250);
}
void drawArms(){
  fill(255,131,0);
  rect (x, y+250,x-200,270);
  rect (x+250, y+250,x-200,270);
}
void drawLegs(){
 fill(0,135,255);
 rect(x+50,y+500,70 ,170);
 rect(x+180,y+500,70 ,170);
}
void drawHands(){
  fill(200);
  ellipse(x+25,y+520,50,50);
  ellipse(x+275,y+520,50,50);
  
}
void drawShoes(){
  fill(2400);
  triangle(x+50,y+670,x+50,y+720,x,y+695);
  triangle(x+250,y+670,x+250,y+720,x+300,y+695);
  rect(x+50,y+670,70,50);
  rect(x+180,y+670,70,50);
}

void drawAccesoris(){
  fill(255,0,0);
  rect(x+110,y+380,75,75);
  fill(255,0,147);
  circle(x+110,y+380,55); 
  fill(209,255,0);
  circle(x+110,y+450,55);
  fill(0,212,255);
  circle(x+190,y+380,55);
  fill(185,0,255);
  circle(x+190,y+450,55);
  rect(x+82,y+280,130,50);
}

void drawMouth(){
  fill(130);
  rect(x+50,y+110,200,50);
  line(x+90,y+110,x+90,y+160);
  line(x+130,y+110,x+130,y+160);
  line(x+170,y+110,x+170,y+160);
  line(x+210,y+110,x+210,y+160);



}
  
void draw(){
drawFace();
drawMouth();
drawNeck();
drawBody();
drawAccesoris();
drawHands();
drawArms();
drawLegs();
drawShoes();

}
