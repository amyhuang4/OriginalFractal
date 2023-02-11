float zoom = 1.0;
int hm = 0;
public void setup() {
  size (600, 600);
}

public void draw() {
  zoom+=0.01;
  hm++;
  if (hm>100) { 
    hm = 0;
    zoom = 1.0;
  }
  translate(300, 300);
  scale(zoom);
  snowglobe(hm);
}

public void snowglobe(int hm) {
  noStroke();
  fill(255);
  ellipse(0, 0, hm+800, hm+800);
  fill (176, 212, 229);
  ellipse(0, 0, hm+700, hm+700);
  fill(255);
  ellipse(0, 0, hm+600, hm+600);
  fill (176, 212, 229);
  ellipse(0, 0, hm+500, hm+500);
  fill(255);
  ellipse(0, 0, hm+400, hm+400);
  fill (176, 212, 229);
  ellipse(0, 0, hm+300, hm+300);
  fill(255);
  ellipse(0, 0, hm+200, hm+200);
  fill (176, 212, 229);
  ellipse(0, 0, hm+100, hm+100);
  fill(255);
  ellipse(0, 0, hm, hm);
  if (hm>100) {
    snowglobe(hm-100);
    snowglobe(hm-300);
  }
}
