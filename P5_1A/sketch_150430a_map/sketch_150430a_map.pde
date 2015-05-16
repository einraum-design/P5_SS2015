void setup(){
  size(800, 600);
  frameRate(60);
}

void draw(){
  float helligkeit;
  
  if(mouseX < width/2){
    helligkeit = map(mouseX, 0, width/2, 0, 255);
  } else{
    helligkeit = map(mouseX, width/2, width, 255, 0);
  }
  background(helligkeit, helligkeit, helligkeit);
}