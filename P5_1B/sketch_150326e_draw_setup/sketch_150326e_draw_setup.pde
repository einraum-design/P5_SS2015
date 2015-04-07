// einzeiliger Kommentar

/* ich 
bin 
ein
blockkommentar */

// wird einmal zu Prgrammstart ausgefuehrt
void setup(){
  size(800, 600);
  frameRate(60); 
}

// wird nach der setup immer wieder ausgefuehrt
void draw(){
  // bei jedem neuen Frame ueberzeichnet der background alles vorher gezeichnete
  background(255);
  
  // mouseX und mouseY sind Systemvariablen, die die aktuelle
  // mouseposition innerhalb des Fensters beinhalten
  ellipse(mouseX, mouseY, 150, 150);
}
