  PImage im[] = new PImage[10];
  String imFile[] = {"0.jpg", "1.jpg", "2.jpg", "3.jpg", "4.jpg", "5.jpg", "6.jpg", "7.jpg", "8.jpg", "9.jpg"};

  void setup() {
    size(140, 285); 
    for (int i = 0; i < 10; i = i + 1) {
        im[i] = loadImage(imFile[i]);  
    }
  }

  void draw() {
    int h = hour();           
    int h_dec = int(h / 10);    
    int h_uni = h - h_dec * 10;
    
    image(im[h_dec], 0, 0);   
    image(im[h_uni], 70, 0);    
    
    int m = minute();         
    int m_dec = int(m / 10);  
    int m_uni = m - m_dec * 10;
    
    image(im[m_dec], 0, 95);  
    image(im[m_uni], 70, 95);  
    
    int s = second();         
    int s_dec = int(s / 10);  
    int s_uni = s - s_dec * 10; 
    
    image(im[s_dec], 0, 190);   
    image(im[s_uni], 70, 190);  
  }
