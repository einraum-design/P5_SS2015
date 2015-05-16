void setup() {
  size(800, 600);
}
void draw() {


  if (mouseX < width/3) {
    background(255, 0, 0);
  } else if (mouseX >= width/3 && mouseX < width * 2.0/3) {
    background(0, 255, 0);
  } else {
    background(0, 0, 255);
  }
  
  int xPos = 200;
  int yPos = 150;
  int diameter = 100;
  
  
  float distance = dist(xPos, yPos, mouseX, mouseY);
  
  fill(255);
  if(distance <= diameter/2){
    fill(150);
  }

  ellipse(xPos, yPos, diameter, diameter);
  
  
  
}
