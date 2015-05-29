int currentRotation = 0;
void setup(){
  size(800, 600, P3D);
  noStroke();
}

void draw(){
  background(0);
  
  //lights();
  
  //directionalLight(51, 102, 126, -1, 0, 0);
  
  translate(width/2, height/2);
  
    pointLight(51, 102, 126, mouseX-width/2.0, mouseY-height/2.0, 0);

  
  
  rotateY(radians(currentRotation));
  fill(255);
  //rect(0, -100, 300, 200);
  beginShape();
  vertex(0, -100);
  vertex(300, -100);
  vertex(300, 100);
  vertex(0, 100);
  vertex(-150, 0, 50);
  endShape();
  
  translate(-250, 0);
  sphere(50);
  
  currentRotation ++;

}