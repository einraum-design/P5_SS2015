// Array hat eine feste Anzahl an Objekten
Schlange[] schlangenArray = new Schlange[16];

// ArrayList kann beliebig lang erweitert werden
ArrayList<Schlange> schlangenList = new ArrayList<Schlange>();

// einzelnes Objekt vom Typ Schlange
Schlange s;


void setup(){
  size(800, 600);
  frameRate(10);
  
  s = new Schlange();
}

void draw(){
  s.update();
  s.render();
  s.lastPos = s.currentPos.copy();
  
  // alle 
  for(int i = 0; i<schlangenList.size(); i++){
    Schlange sl = schlangenList.get(i);
    
    sl.update();
    sl.render();
    
    sl.lastPos = sl.currentPos.copy();
  }
  
  // alternative schreibweise für die for schleife
  /*
  for(Schlange sl : schlangenList){
    sl.update();
    sl.render();
    sl.lastPos = sl.currentPos.copy();  
  }*/
  
  
}

void mousePressed(){
  // auf mousePress neue Schlange erzeugen und an ArrayList anhängen
  Schlange sch = new Schlange(mouseX, mouseY);
  schlangenList.add(sch);
}
