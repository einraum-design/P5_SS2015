

void setup(){
  size(600, 400);
}

void draw(){
  
  fill(random(255), random(255), random(255));
  int diameter = (int) random(10, 40);
  ellipse(random(width), random(height), diameter, diameter);
}
