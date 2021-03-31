String[] words;
PFont font;
int x, y, z;
int i = 0;
color c1 = #c36f31;
color c2 = #b7bf5e;
color c3 = #cab39f;

void setup(){
  size(700, 600);
  words = loadStrings("uniquewords.txt");
  font = createFont("times new roman", 20);
  noLoop();
}

void draw(){
  x = 0;
  y = 20;
  z = 0;

  background(255);
  textFont(font);
  int len = words.length;
  while(y < 600 && z < len) {
    int idx = (int)random(0, len);
    int wordLength = words[idx].length();
  
    if(wordLength <= 6){
      fill(c1);
    }
     else if(wordLength > 6 && wordLength < 9){
       fill(c2);
     }
     else{
       fill(c3);
     }
    
    int wid = (int)textWidth(words[idx] + " ");
    i = x + wid;
    if(i > 700){
      if(y < 590){
        y = y + 25;
        x = 0;
        text(words[idx], x, y);
        x = wid;
      }
      
    }
     else{
       text(words[idx], x ,y);
       x = i;
      }
      i = 0;
      z++;   
  }
 noLoop();
}

void mousePressed(){
  background(255);
  loop();
}
