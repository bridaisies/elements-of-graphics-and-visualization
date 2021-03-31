class bubblesTrail extends bubbles{
  float x, y, radius, speed;
  
  bubblesTrail(float x, float y, float radius, float speed){
    super(x, y, radius, speed);
    this.x = x;
    this.y = y;
    this.radius = radius;
    this.speed = speed;
  }
  
   void display(){
    fill(color(173, 216, 230));
    stroke(color(173, 216, 230));
    ellipse(x, y, radius, radius);
  
    pushMatrix();
    translate(-60, 0);
    scale(0.97);
    
    if(this.x >= (width + 100)){
      this.x = 0;
    }
    popMatrix();
   }
   
  void move(){
    
    this.x = this.x + this.speed;
    if(this.x > width){
      this.x = this.x;
      this.y = this.y;
    }
    
    ellipse(this.x, this.y, this.radius, this.radius);
  }
}
