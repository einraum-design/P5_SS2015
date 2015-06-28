PGraphics pg;

void setup() {
  size(800, 600);

  pg = createGraphics(width, height);

  pg.beginDraw();
  pg.background(255);
  pg.endDraw();
}


void draw() {

  pg.beginDraw();
  pg.ellipse(random(width), random(height), 30, 30);
  pg.endDraw();


  image(pg, 0, 0);
  fill(0);
  textSize(48);
  text("hello world", xPos, yPos);
}

int xPos= 300;
int yPos= 200; 
void mousePressed() {
  xPos =(int) random(width);
}

