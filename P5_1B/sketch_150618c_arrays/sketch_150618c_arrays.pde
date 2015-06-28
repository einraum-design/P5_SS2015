String [] names = {"Anna", "Klaus", "Peter", "Egon", "Stefanie"};
int [] alter = {23, 40, 23, 33, 12};


int index = 0;

void setup(){
  size(800, 600);
  
  textSize(16);
  fill(0);
  /*text(names[0], 30, 30);
  text(names[1], 30, 60);*/
  
  
}

void draw(){
  background(255);
  text(names[index], 30, 30);
  text(alter[index], 30, 50);
}

void mousePressed(){
  
  index = index + 1;
  
  if(index >= names.length){
    index = 0;
  }
}
