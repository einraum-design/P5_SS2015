/**
 * Loop. 
 * 
 * Shows how to load and play a QuickTime movie file.  
 *
 */

import processing.video.*;

Movie movie;

boolean moviePlaying = false;


void setup() {
  size(640, 360);
  background(0);
  // Load and play the video in a loop
  movie = new Movie(this, "transit.mov");
  movie.loop();
  moviePlaying = true;
}

void movieEvent(Movie m) {
  m.read();
}

void draw() {
  //if (movie.available() == true) {
  //  movie.read(); 
  //}
  image(movie, 0, 0, width, height);
  
  text(movie.duration(), 20, 40);
  text(movie.time(), 20, 60);
  
  float b = map(movie.time(), 0, movie.duration(), 0, width);
  rect(0, 0, b, 10);
}

/*void mousePressed(){
  if(moviePlaying == true){
    movie.pause();
    moviePlaying = false;
  }else{
    movie.play();
    moviePlaying = true;
  }
  
  
}*/

void mouseReleased(){
  //movie.play();
}
