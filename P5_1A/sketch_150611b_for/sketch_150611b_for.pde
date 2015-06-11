void setup(){
  size(800, 600, P2D);
  smooth(4);
}

void draw(){
    background(255);

  for(int xPos = 0; xPos <= width; xPos = xPos + 10){
    stroke(255-xPos, 255, 0 + xPos);
    line(xPos, 0, mouseX, mouseY);
  }
  
  for(int yPos = 0; yPos <= height; yPos = yPos + 10){
    stroke(255-yPos, 255, -200 + yPos);
    line(width, yPos, mouseX, mouseY);
    line(0, yPos, mouseX, mouseY);
  }
}

