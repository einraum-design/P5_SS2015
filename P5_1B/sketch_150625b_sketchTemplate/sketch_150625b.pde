import ddf.minim.*;

int status = 0;

// Status 0
PImage startImg;


// Status 2
Minim minim;
AudioPlayer player;


// Zeitpunkt status 2
int timestamp = 0;



void setup() {
  size(800, 600);

  // status 0
  startImg = loadImage("screen.png");

  // status 2
  minim = new Minim(this);
  player = minim.loadFile("02 DJango.mp3");
}

void draw() {
  if(millis() - timestamp > 5000 && status == 2){
    status = 0;
    player.pause();
    player.rewind();
  }
  

  if (status == 0) {
    // Startscreen
    image(startImg, 0, 0);
  } else if (status == 1) {
    //background(255);
    fill(random(255), 100, 0);
    ellipse(random(width), random(height), 40, 40);
  } else if (status == 2) {
    if (player.isPlaying() == false) {
      player.play();
    }
  }
}

void mousePressed(){
  player.play();
}
void mouseReleased(){
  player.pause();
  player.rewind();
}

void mouseClicked() {
  background(255);
  status = status + 1;
  
  if(status == 2){
    timestamp = millis();
  }
}

