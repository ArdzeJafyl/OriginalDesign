int xspacing = 16;   
int w;             

float theta = 0.0;  
float amplitude = 100.0; 
float period = 600.0; 
float dx; 
float[] yvalues;

void setup() {
  size(1280, 720);
  w = width+16;
  dx = (TWO_PI / period) * xspacing;
  yvalues = new float[w/xspacing];
}

void draw() {
  background(0,0,0);
  amplitude = 50 + mouseY/3;
  fill(255);
  text(amplitude + "   Whatchacallits", 50,50);
  mWave();
  showWave();
}

void mWave() {
  theta += 0.05;
  float x = theta;
  for (int i = 0; i < yvalues.length; i++) {
    yvalues[i] = sin(x)*amplitude;
    x+=dx;
  }
}

void showWave() {
  noStroke();
  fill(255,0,0);
  for (int x = 0; x < yvalues.length; x++) {
    fill(yvalues[x] + 50,0,50);
    ellipse(x*xspacing, height/2+yvalues[x], 16, 16);
  }
}
