int currentRotation = 0;

void setup(){
  size(800, 600, P2D);
  smooth();
}

void draw(){
  noStroke();
  fill(0, 20);
  rect(0, 0, width, height);
  
  translate(mouseX, mouseY);
  
  rotate(radians(currentRotation));
  //rotate(random(TWO_PI)); // rotate(random(radians(360)));
  
  stroke(0, 255, 0);
  line(0, 0, 0, -200);
  
  currentRotation ++; // currentRotation = currentRotation + 1;
}