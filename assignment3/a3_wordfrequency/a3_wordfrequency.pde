String[] words;


void setup() {
  size(900, 400);
  background(255);
  //fill(70, 200, 100, 70);
  
} 

void draw() {
  String[] data = loadStrings("wordfrequency.txt");
  float g = 0;
  float small_width = 4*width/data.length;
  for (int i =0; i < data.length; i++)
  {
    String[] coords = split(data[i], ':');
    //rectMode(CENTER);
    int freq = Integer.parseInt(coords[0]);
    int wordcount = Integer.parseInt(coords[1]);
    float a = i*small_width ;
    float b = wordcount / 2566.0 * 500 ;
    fill(255*freq/10.0,0,0);
    rect (10+a, height - 10 - b, small_width, b);
    
  }
  
  noLoop();
}
  
