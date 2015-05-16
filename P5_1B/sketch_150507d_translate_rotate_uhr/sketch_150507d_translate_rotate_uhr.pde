void setup() {
  size(800, 600);
}

void draw() {
  background(255);
  drawCurrentCoordinateSystem();

  translate(width/2, height/2);
  drawCurrentCoordinateSystem();

  // second() 0 - 59
  pushMatrix();
  float secondsRotation = map(second(), 0, 60, 0, 360);
  rotate(radians(secondsRotation));

  drawCurrentCoordinateSystem();

  stroke(255, 0, 0);
  line(0, 0, 0, -200);
  noFill();
  ellipse(0, -170, 30, 30);
  
  pushMatrix();
  translate(0, -170);
  rotate(-radians(secondsRotation));
  fill(0);
  textAlign(CENTER,CENTER);
  
  text("pm", 0, 0);
  popMatrix();

  popMatrix();

  pushMatrix();
  // minute() 0 - 59
  float minuteRotation = map(minute(), 0, 60, 0, 360);
  rotate(radians(minuteRotation));

  //drawCurrentCoordinateSystem();

  stroke(0);
  strokeWeight(4);
  line(0, 0, 0, -200);
  popMatrix();


  pushMatrix();
  // minute() 0 - 59
  float hourRotation = map(hour(), 0, 24, 0, 720);
  rotate(radians(hourRotation));

  //drawCurrentCoordinateSystem();

  stroke(0);
  strokeWeight(6);
  line(0, 0, 0, -120);
  popMatrix();
}















void drawCurrentCoordinateSystem() {
  stroke(0, 40);
  strokeWeight(1);
  int lineLength = 400;

  for (int i = -lineLength/2; i <= lineLength/2; i += 10) {
    line(i, -lineLength/2, i, lineLength/2);
    line(-lineLength/2, i, lineLength/2, i);
  }

  stroke(0, 255, 0);
  line(0, -lineLength/2, 0, lineLength/2);

  line(0, lineLength/2, 15, lineLength/2-15);
  line(0, lineLength/2, -15, lineLength/2-15);

  stroke(255, 0, 0);
  line(-lineLength/2, 0, lineLength/2, 0);

  line(lineLength/2, 0, lineLength/2-15, -15);
  line(lineLength/2, 0, lineLength/2-15, 15);
}
