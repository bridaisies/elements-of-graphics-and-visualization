PImage img1, img2;
float r, g, b;
int width, height;

void setup(){
  surface.setResizable(true); 
  img1 = loadImage("thisisfine.jpg"); 
  img2 = loadImage("thisisfine.jpg");
  surface.setSize(img1.width, img1.height);  
}

void draw(){
  img1.loadPixels();
  img2.loadPixels();
  width = img2.width;
  height = img2.height;
  image(img2, 0, 0);
}

void keyPressed(){  
  //no filter
  if (keyPressed && key == '0'){
    img1.loadPixels();
    for (int x = 0; x < img2.width; x++){
     for (int y = 0; y < img2.height; y++){
       int loc = x + (y * img2.width);
       img2.pixels[loc] = img1.pixels[loc];
     }
  }
  img2.updatePixels();
  image(img2, 0, 0);
  }
  
  //greyscale
  else if (keyPressed && key == '1'){
    img1.loadPixels();
    for (int x = 0; x < img2.width; x++){
     for (int y = 0; y < img2.height; y++){
       int loc = x + (y * img2.width);
       int pix = img1.pixels[loc];
       r = red(pix);
       g = green(pix);
       b = blue(pix);
       int grey = int(color((r + g + b)/3));
       img2.pixels[loc] = grey;
     }
  }
  img2.updatePixels();
  image(img2, 0, 0);
  }
  
  //contrast
  else if (keyPressed && key == '2'){
    img1.loadPixels();
    float tvalue = 100;
    for (int x = 0; x < img2.width; x++){
     for (int y = 0; y < img2.height; y++){
       int loc = x + (y * img2.width);
       float bright = brightness(img2.pixels[loc]);
       if (bright > tvalue){
         img2.pixels[loc] = color(255);       
       }else{
         img2.pixels[loc] = color(0);
       }
     }
    }
  img2.updatePixels();
  image(img2, 0, 0);
  }
  
  //gaussian
  else if (keyPressed && key == '3'){
    float[][] matrix = {{.0625, .125, .0625}, {.125, .25, .125}, {.0625, .125, .0625}};
 
    img1.loadPixels();
    loadPixels();
    for (int x = 0; x < img2.width; x++){
     for (int y = 0; y < img2.height; y++){
       color blur = blurhelp(x, y, matrix, matrix[0].length);
       int loc = x + (y * img2.width);
       img2.pixels[loc] = color(blur);       
     }
  }
    updatePixels();
    img2.updatePixels();
    image(img2, 0, 0);
  }
  
  //edgedetection
  else if (keyPressed && key == '4'){
    float[][] matx = {{-1, 0, 1}, {-2, 0, +2}, {-1, 0, 1}};
    float[][] maty = {{-1, -2, -1}, {0, 0, 0}, {1, 2, 1}};
    int matsize = 3;  
    img1.loadPixels();
    for (int x = 0; x < img2.width; x++){
     for (int y = 0; y < img2.height; y++){
       int loc = x + (y * img2.width);
       img2.pixels[loc] = edhelp(x, y, matx, maty, matsize);
     }
   }
    img2.updatePixels();
    image(img2, 0, 0);
  }
  
  //original image
  else {
    img1.loadPixels();
    for (int x = 0; x < img2.width; x++){
     for (int y = 0; y < img2.height; y++){
       int loc = x + (y * img2.width);
       img2.pixels[loc] = img1.pixels[loc];
     }
  }
    img2.updatePixels();
    image(img2, 0, 0);
  }
}

color blurhelp(int x, int y, float[][] m, int size){
  float r = 0;
  float g = 0;
  float b = 0;
  for (int i = 0; i < size; i++){
    for (int j = 0; j < size; j++){
      int loc = (((x + i) - (size / 2)) + img1.width * ((y + j) - (size / 2)));      
      loc = constrain(loc, 0 , (img1.pixels.length - 1));
      float matr = m[i][j];
      r = r + red(img1.pixels[loc]) * matr;
      g = g + green(img1.pixels[loc]) * matr;
      b = b + blue(img1.pixels[loc]) * matr;      
    }
  }
  int res = color(r, g, b);
  return res;
}

color edhelp(int x, int y, float[][] mx, float[][] my, int size){
  float xr, xg, xb;
  xr = 0;
  xg = 0;
  xb = 0;
  float yr, yg, yb;
  yr = 0;
  yg = 0;
  yb = 0;
  
  for (int i = 0; i < size; i++){
    for (int j = 0; j < size; j++){
      int loc = (((x + i) - (size / 2)) + img1.width * ((y + j) - (size / 2)));    
      loc = constrain(loc, 0, (img1.pixels.length-1));
      float matrx = mx[i][j];
      float matry = my[i][j];
      xr = xr + red(img1.pixels[loc]) * matrx;
      xg = xg + green(img1.pixels[loc]) * matrx;
      xb = xb + blue(img1.pixels[loc]) * matrx;
      yr = yr + red(img1.pixels[loc]) * matry;
      yg = yg + green(img1.pixels[loc]) * matry;
      yb = yb + blue(img1.pixels[loc]) * matry;
    }
  }
  float r = sqrt(sq(xr + yr));
  float g = sqrt(sq(xg + yg));
  float b = sqrt(sq(xb + yb));
  
  int edge = color(r, g, b);
  return edge;
}
