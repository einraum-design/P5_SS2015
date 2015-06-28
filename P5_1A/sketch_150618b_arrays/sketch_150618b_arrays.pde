String name = "Anna";

String[] names = {"Stefan", "Udo", "Anton", "Eva"};
int[] alter = { 13, 48, 12, 54};

String[] txtZeilen;

int index = 0;

void setup(){
  size(800, 600);
  
  txtZeilen = loadStrings("myTxtFile.txt");
  
  
}

void draw(){
  background(255);
  fill(0);
  
  text(names[index], 30, 30);
  text(alter[index], 30, 50);
  
  text("index: " + index, 30, 70);
  
  
  for(int i = 0; i < txtZeilen.length; i = i+1){
    text(txtZeilen[i], 200, 30 + i * 30);
  }
  /*text(txtZeilen[1], 200, 30 + 1 * 30);
  text(txtZeilen[2], 200, 30 + 2 * 30);
  text(txtZeilen[3], 200, 30 + 3 * 30);*/
}


void mousePressed(){
  index = index + 1;
  if(index >= names.length){
    index = 0;
  } 
}




