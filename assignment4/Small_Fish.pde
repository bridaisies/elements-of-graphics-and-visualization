class smallFish{
  PShape smallFish;
  float x, y, speed;
  
  smallFish(){
    this.x = 25;
    this.y = 25;
    this.speed = 1;
  }
  
  smallFish(float x, float y, float speed){
    this.x = x;
    this.y = y;
    this.speed = speed;
  }
  
  void display(){
    fill(color(255,153,19));
    stroke(color(255,153,19));
    smallFish = createShape(GROUP);
    PShape body = createShape(ELLIPSE, 120+this.x, 80 + this.y, 60,30);
    PShape fin = createShape(TRIANGLE, 107+this.x, 67+this.y, 117+this.x, 57+this.y, 127+this.x, 67+this.y);
    smallFish.addChild(body);
    smallFish.addChild(fin);
    shape(smallFish);
  }
  
  void move(){
    this.x += this.speed;
    if(this.x >= width){
      this.x = -100;
    }
      
  }
  
}
