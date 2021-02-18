public void setup() {
  size(900,800);
  noStroke();
}
int x = 450;
int y = 450;
int s = 200;
int l = 800;
void draw() {
  background(0);
  fractal(x, y, s, l);
}

public void fractal(int x, int y, int s, int len) {
  if(len > 70) {
    ellipse(x, y, s, s);
    fractal(x+s-(s/4), y, s/2, len/2);
    fractal(x-s+(s/4), y, s/2, len/2);
    fractal(x, y+s-s/4, s/2, len/2);
    fractal(x, y-s+s/4, s/2, len/2);
  }
}
