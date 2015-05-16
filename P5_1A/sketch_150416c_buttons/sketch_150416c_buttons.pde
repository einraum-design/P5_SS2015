color cBackground = color(0, 0, 0);

void setup() {
  size(800, 600);
  frameRate(60);
}

void draw() {
  background(cBackground);

  rectMode(CORNER);

  int xPos = 120;
  int yPos = 40;
  int w = 250;
  int h = 50;


  
  if (mouseX > xPos && mouseX < (xPos + w) && mouseY > yPos && mouseY < yPos + h ) {
    fill(0, 0, 150);
    cBackground = color(0,0,255);
  } else {
    fill(0, 0, 100);
  }

  rect(xPos, yPos, w, h);

  // x und y position 
  fill(255, 0, 0);
  ellipse(xPos, yPos, 5, 5);

  rectMode(CENTER);

  xPos = 400;
  yPos = 500;
  w = 150;
  h = 30;



  if (mouseX > xPos - w/2 && mouseX < xPos  + w/2 && mouseY > yPos - h/2 && mouseY < yPos  + h/2) {
    fill(0, 150, 0);
    cBackground = color(0,255,0);
  } else {
    fill(0, 50, 0);
  }
  rect(xPos, yPos, w, h);

  // x und y position 
  fill(255, 0, 0);
  ellipse(xPos, yPos, 5, 5);


  xPos = 500;
  yPos = 250;
  w = 100;

  //  int a = xPos - mouseX;
  //  int b = yPos - mouseY;
  //float distance = sqrt(a * a + b * b);
  float distance = dist(xPos, yPos, mouseX, mouseY);
  if (distance < w/2) {
    fill(150, 0, 0);
    
    if (mousePressed == true) {
      fill(255, 0, 0);
    }
  } else {
    fill(50, 0, 0);
  }

  ellipse(xPos, yPos, w, w);




  // Systemvariable mousePressed : bool

  if (mousePressed == true) {
    fill(0, 100, 100);
  } else {
    fill(0, 0, 100);
  }

  ellipse(150, 300, 100, 100);
}