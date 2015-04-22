color c = color(0, 255, 0);

void setup(){
  size(800, 600);
  frameRate(60);
}

void draw(){
  background(c);
  
  
  rectMode(CORNER);
  int xPos = 200;
  int yPos = 500;
  int w = 150;
  int h = 50;
  
  if(mouseX > xPos && mouseX < xPos + w && mouseY > yPos && mouseY < yPos + h){
    fill(0, 0, 255);
    c = color(0, 0, 255);
  } else{
    fill(0, 0, 150);
  }
  
  rect(xPos, yPos, w, h);
  
  fill(255, 0, 0);
  ellipse(xPos, yPos, 10, 10);
  
  
  
  rectMode(CENTER);
  
  xPos = 500;
  yPos = 200;
  w = 150;
  h = 50;
  
  if(mouseX > xPos - w/2 && mouseX < xPos + w/2 && mouseY > yPos -h/2 && mouseY < yPos + h/2){
    fill(0, 255,0);
    c = color(0, 255, 0);
  } else{
    fill(0, 50, 0);
  }
  
  rect(xPos, yPos, w, h);
  
  fill(255, 0, 0);
  ellipse(xPos, yPos, 10, 10);
}
