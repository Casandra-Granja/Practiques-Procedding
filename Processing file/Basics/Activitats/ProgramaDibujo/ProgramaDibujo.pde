color c;
String s;
float r;
boolean Drawing;

void setup() {
  size(800, 800);
  background(255);
  rectMode(CENTER);
  ellipseMode(CENTER);

  c = color(255);
  s = "OVAL";
  r = 20;
  Drawing = false;
}

void setDrawing() {
  if (key=='d' || key=='D') {
    Drawing = !Drawing;
  }
}


void setShape() {
  if (key == '1') {
    s = "OVAL";
  } else if (key == '2') {
    s = "RHOMBUS";
  } else if (key == '3') {
    s = "TRAPEZIUM";
  }
}


void setColor() {
  if (key == 'O' || key == 'o') {
    c = color(255, 179, 0);
  } else if (key == 'P' || key == 'p') {
    c = color(176, 69, 255);
  } else if (key == 'Y' || key == 'y') {
    c = color(255, 229, 37);
  }
  fill(c);
}


void setSize() {
  if (keyCode == UP) {
    r= r+ 10;
  } else if (keyCode == DOWN) {
    r= r- 10;
    if (r <= 5) {
      r = 5;
    }
  }
}


void drawShape() {
  if (Drawing) {
    fill(c);
    if (s == "OVAL") {
      ellipse(mouseX, mouseY, r*2, r);
    } else if (s == "RHOMBUS") {
      quad(mouseX, mouseY-r, mouseX+r, mouseY, mouseX, mouseY+r,mouseX-r,mouseY);
    } else if (s == "TRAPEZIUM") {
      quad(mouseX-r, mouseY-r/2, mouseX+r, mouseY-r/2, mouseX+r/2, mouseY+r, mouseX-r/2, mouseY+r);
    }
  }
}


void deleteCanva() {
  if (keyCode == DELETE) {
    background(255);
    Drawing=false;
  }
}


void keyPressed() {
  setDrawing();
  setShape();
  setColor();
  setSize();
  deleteCanva();
}


void draw() {
  drawShape();
}
