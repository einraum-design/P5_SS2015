class AdvancedMovie extends Movie{
  
  AdvancedMovie(PApplet parent, String filename){
    super(parent, filename);
  }
  
  boolean isPlaying(){
    return playing;
  }
  
  boolean isPaused(){
    return paused;
  }
  
  boolean isRepeating(){
    return repeat;
  }
}
