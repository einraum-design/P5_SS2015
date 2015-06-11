size(800, 600);
background(255);

int counter = 0;

while (counter < 100) {
  pushMatrix();
  translate(random(width), random(height));
  rotate(radians(random(360)));
  fill(random(255), random(255), random(255));
  text("Hello", 0, 0);
  popMatrix();
  
  counter = counter + 1;
}

counter = 0;

while(counter <= width){
  ellipse(counter, height/2, 10, 10);
  counter = counter + 10;
}

counter = 0;
while(counter < height){
  line(0, 0, width, counter);
  counter = counter + 10;
}

for(int counter = 0; counter < 100; counter = counter + 1){
  float radius = random(50);
  ellipse(random(width), random(height), radius, radius);
}
