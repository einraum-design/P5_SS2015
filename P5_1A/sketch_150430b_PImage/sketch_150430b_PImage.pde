// Bildvariablen
PImage gradient;
PImage webImage;

color c_background = color(0, 0, 0);

int counter = 0;

void setup() {
  size(800, 600);
  frameRate(60);
  
  // lade ein Bild in die Variable -> je einmal in der setup
  gradient = loadImage("gradient.png");
  webImage = loadImage("http://www.jpl.nasa.gov/spaceimages/images/mediumsize/PIA17011_ip.jpg");
}

void draw() {
  background(c_background);

  int xPos = 200;
  int yPos = 50;
  image(webImage, 20, 20, webImage.width, webImage.height);
  image(gradient, xPos, yPos, gradient.width, gradient.height);

  // farbwaehler -> get sucht den farbton an dem pixel x = mouseX und y = mousY vom Bild
  color c_mouse = webImage.get(mouseX - 20, mouseY - 20);
  // zeichne ein Rechteck in der mouseOver Pixelfarbe des Bildes an die Position der Mausspitze
  fill(c_mouse);
  rect(mouseX, mouseY, 50, 50); //<>//

  // backgroundfarbe wird auf klick ins verlaufsfeld geändert
  if (mouseX > xPos && mouseX < xPos + gradient.width && mouseY > yPos && mouseY < yPos + gradient.height) {
    if (mousePressed == true) {
      float helligkeit = map(mouseX, xPos, xPos + gradient.width, 0, 255);
      c_background = color(helligkeit, helligkeit, helligkeit);
    }
  }
  
  xPos = 300;
  yPos = 400;
  int w = 100;
  int h = 100;
  
  fill(255);
  
  if (mouseX > xPos && mouseX < xPos + w && mouseY > yPos && mouseY < yPos + h) {
    if(mousePressed == true){
      // wird soolange geprinted, wie die Maustaste gehalten wird
      println("mousePressed!");
    }
  }
  rect(xPos, yPos, w, h);
  
  
  // Der Counter zählt, wie häufig geklickt wird
  fill(255);
  text(counter, 20, 40);
  
}

// Eventlistener wird auf Mausklicken ausgelöst und alle Befehle im Rumpf einmal pro Klick ausgefuehrt
void mousePressed(){
  println("void mousePressed Event Handler");
}

// wird auf Maustaste loslassen ausgelöst
void mouseReleased(){
  println("void mouseReleased");
  // der counter wird je Klick um eins hochgezaehlt
  counter = counter + 1;
}
