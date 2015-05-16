// Bildvariablen
PImage gradient;
PImage webImage;
color c_background = color(0);

void setup() {
  size(800, 600);
  frameRate(60);
  
  // lade ein Bild in die Variable -> je einmal in der setup
  gradient = loadImage("gradient.png");
  webImage = loadImage("http://www.jpl.nasa.gov/spaceimages/images/mediumsize/PIA17011_ip.jpg");
}

void draw() {


  /* if(mouseX < width/2){
   helligkeit = map(mouseX, 0, width/2, 0, 255);
   } else {
   helligkeit = map(mouseX, width/2, width, 255, 0);
   }*/
  background(c_background);
  image(webImage, 0, 0);

  int xPos = 200;
  int yPos = 50;
  image(gradient, xPos, yPos, gradient.width, gradient.height);

  // backgroundfarbe wird auf klick ins verlaufsfeld geändert
  if (mouseX > xPos && mouseX < xPos + gradient.width && mouseY > yPos && mouseY < yPos + gradient.height && mousePressed == true) {
    float helligkeit = map(mouseX, xPos, xPos + gradient.width, 0, 255);
    c_background = color(helligkeit, helligkeit, helligkeit);
  }

  fill(255);
  stroke(0);
  String myText = "mouseX: " + mouseX;
  text(myText, 20, 40);
  text("mouseY: " + mouseY, 20, 60);
  
  
  color c = webImage.get(mouseX, mouseY);
  fill(c);
  rect(mouseX, mouseY, 50, 50);
}
