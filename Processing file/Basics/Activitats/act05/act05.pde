int numCar = 30;
int numImages = 5;

PImage[] img;            
float[] x, y, s; 

void setup() {
  size(1600, 800);
  
  img = new PImage[numCar];
  x = new float[numCar];
  y = new float[numCar];
  s = new float[numCar];
  
  for (int i = 0; i < numCar; i++) {
    x[i] = random(0, width);
    y[i] = random(150, height-150); 
    s[i] = random(0.25, 1.0);
    int r = (int)random(numImages);
    String imgName = "car-0" + r + ".png";
    img[i] = loadImage(imgName);
  }
}

void draw() {
  drawRoad(); 
  
  for (int i = 0; i < numCar; i++) {
    
    pushMatrix();
      translate(x[i], y[i]);
      scale(s[i]);
      imageMode(CENTER);
      image(img[i], 0, 0);
    popMatrix();

    x[i] -= 5; 
    y[i] += random(-1, 1); 
    
    if (x[i] + (img[i].width/2) * s[i] < 0) {
      x[i] = width + random(0, 300); 
      y[i] = random(150, height-150); 
    }
  }
}

void drawRoad() {
  background(60, 180, 75);
  fill(50);
  noStroke();
  rect(0, 100, width, height-200);
  stroke(255);
  strokeWeight(5);
  for (int i = 0; i < width; i += 40) {
    line(i, height/2, i+20, height/2);
  }
  strokeWeight(8);
  line(0, 120, width, 120); // Línea superior
  line(0, height-120, width, height-120); // Línea inferior
}
