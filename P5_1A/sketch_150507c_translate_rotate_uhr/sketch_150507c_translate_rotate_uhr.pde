void setup() {
  size(800, 600);
  frameRate(60);
}

void draw() {
  background(255);
  drawCurrentCoordinateSystem();

  translate(width/2, height/2);
  //translate(100, 100);


  // 0 - 360
  float secondRotation = map(second(), 0, 60, 0, 360); // 0 - 59

  rotate(radians(secondRotation));
  drawCurrentCoordinateSystem();
  strokeWeight(4);
  stroke(0);
  line(0, -100, 0, -200);
  pushMatrix();
  // an die spitze vom sekundenzeiger
  translate(0, -200);
  // rotiere nach millis()/2000.0
  rotate(millis()/2000.0);
  // zeichne rechteck rotiert an der spitze vom sekundenzeiger
  rect(0, 0, 30, 30);
  popMatrix();
  
  
  // backrotation of seconds
  rotate(-radians(secondRotation));


  float minuteRotation = map(minute(), 0, 60, 0, 360); // 0 - 59

  pushMatrix();
  rotate(radians(minuteRotation));
  drawCurrentCoordinateSystem();
  strokeWeight(8);
  stroke(0);
  line(0, 0, 0, -200);
  popMatrix();

  float houreRotation = map(hour(), 0, 24, 0, 720); // 0 - 59

  rotate(radians(houreRotation));
  drawCurrentCoordinateSystem();
  strokeWeight(12);
  stroke(0);
  line(0, 0, 0, -120);
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
