// einzeiliger Kommentar

/* ich 
bin 
ein
blockkommentar */



/*
elementare Variablentypen
int zb 1,2 ,34, -3 ... Ganzzahlen
float zb 1.23, -3.456, 5, ...
char zb 'a', 'b', ' ', ...
bool: true | false

// Objekt
String zB "Hello World", "Julia" ...


*/

// neue ganzzahl Variable xPosition - bekommt wert 200 zugewiesen 
float xPosition = 200;
float yPosition = 10;

int alter = 4;



float xSpeed = 7;

String name = "Anna";

// wird einmal zu Prgrammstart ausgefuehrt
void setup(){
  size(800, 600);
  
  
  // nur innerhalb 
  int test = alter;
  frameRate(test);
  
  println(alter);
  alter = alter + 1;
  println(alter);
  alter += 1; //  ist das gleiche wie:  alter = alter + 1;
  println(alter);
  
  println("setup fertig");
  
  // begruessen:
  println("Hello " + name);
  background(255);
}

// wird nach der setup immer wieder ausgefuehrt
void draw(){
  // bei jedem neuen Frame ueberzeichnet der background alles vorher gezeichnete
  
  
  
  
  
  fill(0, 255, 0);
  ellipse(xPosition, yPosition, 40, 40);
  
  xPosition = xPosition + xSpeed;
  yPosition = yPosition + 1.2;
  
  
  // Logische Operatoren > < ==
  /*if(xPosition > width){
    xSpeed = -xSpeed;
  }
  
  if(xPosition < 0){
    xSpeed = -xSpeed;
  }*/
  
  // Verknuepfung der beiden bedingungen über || ODER
  // sobald mindestens eine Bedingung erfuellt ist, wird der Inhalt ausgeführt
  if(xPosition > width || xPosition < 0){
    xSpeed = -xSpeed;
  }
  
  
  
  
  // width
  // height 
  
  rect(width-80, 0, 80, height);
  
  ellipse(width/2, height/2, 80, 80);
  
  
  
  fill(mouseX/2, 100, 100);
  println("rotwert: " + (mouseX + 10));
  
  println("Hello World");
  
  // mouseX und mouseY sind Systemvariablen, die die aktuelle
  // mouseposition innerhalb des Fensters beinhalten
  ellipse(width-mouseX, mouseY, 150, 150);
}
