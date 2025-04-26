   
  String[] imFiles = {"fondo.png", "manzana.png", "newton1.png", "newton2.png"};
  PImage[] im = new PImage[4];
   
  int nX = 0;   
  int nY = 0;   
  float aY = 0;  
  int aX = 15;  
  float aV = 0;  
  float aA = 0.05; 
  int p = 0;     
  boolean pCount = true; 
  long t = 0;    
  void setup() {
    size(400, 400);  
    nY = height - 135;
    t = millis();  
    
   
    for(int i = 0; i < 4; i = i + 1) {
        im[i] = loadImage(imFiles[i]);
    }
  }

  void draw() {
    background(200);
    image(im[0], 0, 0, width, height);  
    
    aV = aV + aA;  
    aY = aY + aV;  
    if (aY > height) {
        aY = 15;    
        aX = int(random(width - 20));
        aV = 0;   
        pCount = true;  
    }
    
    fill(255);  
    
    if (aY + 50 > nY && aY < nY + 135) {  
        if (aX + 40 > nX && aX < nX + 128) {
            fill(255, 0, 0);  
            if (pCount) p = p + 1;
              pCount = false;  

        }
    }  

    image(im[1], aX, aY);  // Apple
    if(pCount) {
        image(im[2], nX, nY); 
    } else {
        image(im[3], nX, nY);  
    }
    
    float timer = (millis() - t) / 1000;  

    if (timer >= 30) {  
        noLoop();
    }

    fill(0);
    textSize(20);  
    text("Time: " + (30 - timer), 10, 20);

    fill(0);  
    textSize(20); 
    text("Hits: " + p, 3 * width / 4, 20);
  }

  void keyPressed() {
    if (keyCode == RIGHT) {
        nX = nX + 3;
    }
    if (keyCode == LEFT) {
        nX = nX - 3;
    }
    if (nX < 0) {
        nX = 0;
    }
    if (nX > width - 20) {  
        nX = width - 20;
    }
  }
