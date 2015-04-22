// einzeiliger Kommentar

/* ich 
 bin 
 ein
 blockkommentar */


/*
elementare Variablentypen
int zb 1,2,3,4, 125, -32    -32345 ... 32345 
float zb 1.23, 13.4, 5, -2.3
char 'a', 'b', 'c', ' ', 
bool true | false


Objekte
String zb "Hello World", "Anna", ...
*/

// new variable namens name;
String name = "Anna";

int xPosition = 400;
float yPosition = 10.0;

int xSpeed = 7;


// wird einmal zu Prgrammstart ausgefuehrt
void setup() {
  size(800, 600);
  frameRate(60);
  
  xPosition = width/4;
  
  println("Hello World");
  println("Hello " + name);
  
  name = "Stephan";
  println("Hello " + name);
  
}

// wird nach der setup immer wieder ausgefuehrt
void draw() {
  // bei jedem neuen Frame ueberzeichnet der background alles vorher gezeichnete
  background(255);
  
  fill(0);
  text("Hello", 100, 40);
  text(name, 100, 60);

  // Systemvariablen width, height
  
  // Ellipse in der mitte
  fill(255, 0, 0, 80);
  ellipse(width/2, height/2, 80, 80);

  // rechteck rechtsbundig
  rect(width - 120, 0, 120, height);

  fill(0, 0, 255, 50);
  // rechteck untere haelfte
  rect(0, height/2, width, height/2);
  
  fill(mouseX, mouseY, 100);

  // mouseX und mouseY sind Systemvariablen, die die aktuelle
  // mouseposition innerhalb des Fensters beinhalten
  ellipse(mouseX, mouseY, 150, 150);
  
  
  // animated ball
  fill(0, 0, 255);
  ellipse(xPosition, yPosition, 40, 40);
  
  
  xPosition = xPosition + xSpeed;
  //yPosition = yPosition * 1.1;
  
  
  // Vergleichsoperatoren == , >, <, !, >=, <=
  // Logische Operatoren && (AND), || (OR)
  
  if(xPosition >= width   ||   xPosition < 0){ 
    //xPosition = 0;
    xSpeed = xSpeed * -1;
  }
  
  /*
  if(xPosition < 0){
    //xPosition = 0;
    xSpeed = xSpeed * -1;
  }
  */
 
}
