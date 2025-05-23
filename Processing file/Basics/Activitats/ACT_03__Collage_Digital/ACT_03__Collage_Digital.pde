PImage img, img1, img2, img3;
String txt, txt1, txt2, txt3;
PFont font, font1, font2, font3;
int numImage=1, numText=1, numFont=1;
boolean randomStuff=false;

void setup() {
 size(2000, 1080);
 background(255);
 
 imageMode(CENTER);
 img1 = loadImage("leaf01.png");
 img2 = loadImage("leaf02.png");
 img3 = loadImage("leaf03.png");
 
 txt1 = "WOW";
 txt2 = "pop";
 txt3 = "Leafs";
 
 font1 = createFont("Bitshow.ttf", 100);
 font2 = createFont("AMORIA.otf", 100);
 font3 = createFont("Paradise Signature.otf", 100);
 
 font = font1;
 img = img1;
 txt = txt1;
}

void keyPressed(){
  setParameters();
}

void mousePressed(){
  addStuff();
}

void setParameters(){
    if(key=='r' || key=='R'){
       randomStuff = true;
    }
    else if(key=='f' || key=='F'){
       randomStuff = false;
    }
    else if(key=='x' || key=='X'){
       background(255);
    }
}
void addStuff(){
    if(mouseButton==LEFT){
       addImage();
    }
    else {
       addText();
    }
}

void addImage(){
 int n;
 float x, y, s=18, a;
 if(randomStuff){
    n = floor(random(3));
    x = random(width);
    y = random(height);
    s = random(0.2, 0.5);
    a = random(0, TWO_PI);
 }
 else {
    n = numImage;
    x = mouseX;
    y = mouseY;
    s = 0.5;
    a = random(0, TWO_PI);
 }
 switch(n){
    case 0: img = img1; break;
    case 1: img = img2; break;
    case 2: img = img3; break;
 }
 translate(x,y);
 rotate(a);
 scale(s, s);
 image(img, x, y);
}

void addText(){
 int n=0, f=0;
 float x, y, s=18;
 if(randomStuff){
    n = floor(random(3));
    f = floor(random(3));
    x = random(width);
    y = random(height);
    s = random(18, 52);
 }
 else {
    n = numText;
    x = mouseX;
    y = mouseY;
 }
 switch(n){
    case 0: txt = txt1; break;
    case 1: txt = txt2; break;
    case 2: txt = txt3; break;
 }
 switch(f){
    case 0: font = font1; break;
    case 1: font = font2; break;
    case 2: font = font3; break;
 }
 translate(x,y);
 fill(random(255), random(255), random(255));
 textFont(font);
 textSize(s);
 text(txt, 0, 0);
}

void draw() {
 setParameters();
 addStuff();
}
