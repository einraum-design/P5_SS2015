import ddf.minim.*;

int status = 0;

// status 0
PImage startScreen;

// status 1
float xEllipse, yEllipse;

// status 2
Minim minim;
AudioPlayer player;

// variable zum zeitpunktspeichern
int timestamp = 0;


// status 3
PFont helvetica;
PFont arial;

String myText = "Blla bla bbla \n test 2. zeile";

void setup() {
  size(800, 600);
  minim = new Minim(this);

// loadFont
  helvetica = loadFont("HelveticaNeue-48.vlw");
  textFont(helvetica, 48);
  
// createFont
  //println(PFont.list());
  arial = createFont("ArialMT", 48);

  // status 0
  startScreen = loadImage("background.jpg");


  // status 2
  player = minim.loadFile("02 DJango.mp3");
}

void draw() {
  

  if(millis() - timestamp > 5000 && status == 2){
    status = 0;
    player.pause();
    player.rewind();
  }
  

  if (status == 0) {
    // zeichne startscreen
    image(startScreen, 0, 0);
  } else if (status == 1) {
    background(255);
    fill(random(255), 50, 50);
    ellipse(xEllipse, yEllipse, 30, 30);
  } else if (status == 2) {
    if (player.isPlaying() == false) {
      player.play();
    }
  } else {
    background(255);
    fill(0);
    textAlign(CENTER, CENTER);
    text(myText, width/2, height/2);
  }
}

int clickCouter = 0;
void mouseClicked() {
  
  clickCounter ++;
  if(clickCounter >= 4){
    // audioplayer.play();
  }
  
  
  xEllipse = random(width);
  yEllipse = random(height);
  //background(255);
  status = status + 1;
  
  
  // speicher zeitpunkt beim wechsel zu status = 2;
  if(status == 2){
    timestamp = millis();
  }

}

void keyPressed(){
  status = 5;
}
