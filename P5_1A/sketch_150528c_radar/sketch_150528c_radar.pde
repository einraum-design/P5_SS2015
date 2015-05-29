int currentRotation = 0;

void setup(){
  size(800, 600, P3D);
  background(255);
}



void draw(){
  fill(0, 20);
  rect(0, 0, width, height);
  
  translate(mouseX, mouseY);
  
  rotate(radians(currentRotation));
  //rotate(random(TWO_PI)); // rotate(radians(random(360)));
  
  stroke(0, 255, 0);
  line(0, 0, 0, -100);
  
  currentRotation = currentRotation + 1;
}