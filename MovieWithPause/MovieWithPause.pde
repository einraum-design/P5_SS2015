/**
 * Loop. 
 * 
 * Shows how to load and play a QuickTime movie file.  
 *
 */

import processing.video.*;

String[] movieNames = {"movie1.mov", "movie2.mov"};

AdvancedMovie movie;

void setup() {
  size(640, 360);
  background(0);
  // Load and play the video in a loop
  movie = new AdvancedMovie(this, movieNames[0]);
  movie.loop();
}

void movieEvent(Movie m) {
  m.read();
}

void draw() {
  image(movie, 0, 0, width, height);
  rect(0, 0, (movie.time() / movie.duration()) * width, 20);
}

void mousePressed() {
  if (movie.isPaused()) {
    movie.play();
  } else {
    movie.pause();
  }
  
  if(movie.isPlaying() == false){
    counter ++;
    movie = new AdvancedMovie(this, movieNames[counter]);
    movie.play();
  }
}
