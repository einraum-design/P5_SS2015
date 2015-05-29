int currentRotation = 0;

void setup(){
  size(800, 600, P3D);
  background(255);
  smooth();
  sphereDetail(64);
}



void draw(){
  background(0);
  
  noStroke();
  //lights();
  directionalLight(51, 102, 126, -1, 0,- mouseX/(float)width);
  
  translate(width/2, height/2);
  
  pushMatrix();
  rotateY(radians(currentRotation));
  rect(-300, 0, 300, 200);
  
  sphere(200);
  popMatrix();
  
  rotateX(radians(currentRotation));
  translate(0, 0, 300 - mouseY);
  box(100);
  
  currentRotation ++;
  
}