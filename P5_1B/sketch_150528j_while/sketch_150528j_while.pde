size(800, 600);

int xPos = 0;

while (xPos <= width) {
  ellipse(xPos, height/2, 30, 30);
  xPos = xPos + 50;
}

xPos = 0;
while(xPos <= width){
  point(xPos, 1);
  xPos = xPos + 2;
}


int yPos = 1;
xPos = 0;

while(yPos <= height){

  xPos += 2; // xPos = xPos + 2;
  
  if(xPos > width){
    xPos = 0;
    yPos += 2;
  }
  point(xPos, yPos);
}

for(int counter = 0; counter < 100; counter = counter + 1){
  float radius = random(50);
  fill(random(255), random(255), random(255));
  
  if(counter > 80){
    noFill();
    stroke(random(255), random(255), random(255));
  }
  
  ellipse(random(width), random(height), radius, radius);
  
}
