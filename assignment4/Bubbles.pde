class bubbles{
  float x, y, radius, speed;
  
  bubbles(float x, float y, float radius, float speed){
    this.x = x;
    this.y = y;
    this.radius = radius;
    this.speed = speed;
  }
  
  void display(){
    fill(color(173, 216, 230));
    stroke(color(173, 216, 230));
    ellipse(x, y, radius, radius);
    
  }
  
  void move(){
    
    this.x = this.x + this.speed;
    if(this.x > width/3){
      this.x = this.x - 50;
      this.y = this.y - 50;
    }
    
  }
}
