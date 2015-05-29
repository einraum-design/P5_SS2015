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