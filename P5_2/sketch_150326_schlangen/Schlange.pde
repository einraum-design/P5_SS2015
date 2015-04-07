class Schlange {
  PVector lastPos;
  PVector currentPos;
  PVector addVector;
  color c;

  Schlange() {
    // mit this wird ein anderer Konstruktor mit den entsprechenden Paramtern aufgerufen
    this(width/2, height/2);
    /*currentPos = new PVector(width/2, height/2);
    lastPos = currentPos.copy(); // = new PVector(currentPos.x, currentPos.y);
    addVector = new PVector(15, 0);*/
  }
  
  Schlange(int xStart, int yStart) {
    currentPos = new PVector(xStart, yStart);
    lastPos = currentPos.copy(); // = new PVector(currentPos.x, currentPos.y);
    addVector = new PVector(15, 0);
    
    c = color(random(255), random(255), random(255));
  }

  void update() {
    int randomRotation = ((int)random(-1.5, 1.5)) * 45;
    addVector.rotate(radians(randomRotation));

    currentPos.add(addVector);

    if (currentPos.x > width) {
      render();
      currentPos.x -= width;
      lastPos.x -= width;
    }
    if (currentPos.x < 0) {
      render();
      currentPos.x += width;
      lastPos.x += width;
    }

    if (currentPos.y > height) {
      render();
      currentPos.y -= height;
      lastPos.y -= height;
    }
    if (currentPos.y < 0) {
      render();
      currentPos.y += height;
      lastPos.y += height;
    }
  }

  void render() {
    stroke(c);
    line(lastPos.x, lastPos.y, currentPos.x, currentPos.y);
  }
}
