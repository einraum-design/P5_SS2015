float xPos;
float yPos;


void setup(){
  size(600, 600);
  xPos = width/2;
  yPos = height/2;
  noStroke();
}

void draw(){

  // buttonflaeche oberes linkes viertel
  if(mouseX > 0 && mouseX < width/2 && mouseY > 0 && mouseY < height/2){
    // fill, stroke ... Aenderungen wirken sich nur zwischen pushStyle und popStyle aus
    pushStyle();
    fill(random(255), random(255),random(255));
    float durchmesser = random(5, 30);
    ellipse(random(width), random(height), durchmesser, durchmesser);
    popStyle();
  }
  
  rect(0, 0, width/2, height/2);
  
  // map funktion - wertebereiche umrechnene
  // Eingabewert xPos hat wertebereich 0 - width. 
  // wird umgerechnet auf werte von 0 - 255 und in redVal gespeichert
  float redVal = map(xPos, 0, width, 0, 255);
  float greenVal = map(yPos, 0, height, 0, 255);
  fill(redVal, greenVal, random(100));
  
  ellipse(xPos, yPos, 50, 50);
  // random -> zufällige Bewegung in x und y richtung
  xPos = xPos + random(-10, 10);
  yPos = yPos + random(-10, 10);
  
  // wenn die ellipse den das fenster verlässt - wieder auf Mittelpunkt setzten
  if(xPos > width + 25 || xPos < 0 - 25 || yPos < 0 - 25 || yPos > height + 25){
    xPos = width/2;
    yPos = height/2;
  }
  
} //<>//