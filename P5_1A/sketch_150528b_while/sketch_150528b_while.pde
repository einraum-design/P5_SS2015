size(800, 600);
background(255);

int i = 0;
while(i<1500){
 pushMatrix();
 translate(random(width), random(height));
 rotate(random(TWO_PI));
 fill(random(255), random(255), random(255));
 text("hello", 0, 0);
 popMatrix();
 i++;
}