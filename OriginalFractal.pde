int w = 300;
float bingo = 0.0;
public void setup() {
  size (600, 600);
  background(255);
}

public void draw() {
  w+=2;
  if (w>=1200) {
    w = 600;
  }
  translate(300, 300);
  stroke(255);
  snowglobe(w);
}

public void snowglobe(int w) {
  bingo+=0.03;
  if (bingo == 360) {
    bingo = 0;
  }
  rotate(bingo);
  fill (176, 212, 229);
  arc (0, 0, w+300, w+300, 0, THIRD_PI, PIE);
  rotate(-bingo);
  if (w >= 600) {
    snowglobe(w-600);
  }
}
