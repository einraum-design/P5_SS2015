void setup() {
  size(800, 600);
}

void draw() {
  background(255);

  for ( int xPos = 0; xPos < width; xPos += 10) {
    stroke(255 - xPos/2, 255, 0 + xPos/2); // (255, 255, 0)   .... (0, 255, 255);
    line(xPos, 0, mouseX, mouseY);
  }
}

