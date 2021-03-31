class seaweed{
  float x1, y1, x2, y2, x3, y3, x4, y4, speed;
  
  seaweed(float x1, float y1, float x2, float y2, float x3, float y3, float x4, float y4, float speed){
    this.x1 = x1;
    this.y1 = y1;
    this.x2 = x2;
    this.y2 = y2;
    this.x3 = x3;
    this.y3 = y3;
    this.x4 = x4;
    this.y4 = y4;
    this.speed = speed;
  }
  
  void move(){
    this.x1 += this.speed;
    this.x2 += this.speed;
    this.x3 += this.speed;
    this.x4 += this.speed;
  }
  
  void display(){
    
    fill(color(26,87,54));
    stroke(color(26,87,54));
    bezier(x1, y1, x2, y2, x3, y3, x4, y4);
    if(this.x1 >= width + 50 || this.x2 >= width + 50 || this.x3 >= width + 50 || this.x4 >= width + 50){
      this.x1  = -100;
      this.x2  = -70;
      this.x3  = -115;
      this.x4  = -95;
    }
  }
  
  
}
