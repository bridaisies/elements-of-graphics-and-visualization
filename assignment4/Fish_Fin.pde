class tailfin extends smallFish{
  PShape tail;
  float x, y, speed;
  
  tailfin(){
    super();
    this.y = 25;
    this.speed = 0.5;
  }
  
  tailfin(float x, float y, float speed){
    super(x, y, speed);
    this.y = y;
    this.speed = speed;
  }
  
  void display(){
    super.display();
    this.tail();
    
    shape(tail);

  }
  
  void tail(){
    fill(color(255,153,19));
    stroke(color(255,153,19));
    tail = createShape(TRIANGLE, 60 + this.x, 93 + this.y, 60 + this.x, 63 + this.y, 100 + this.x, 80 + this.y);
  }
  
  void move(){
    super.move();
    this.x += super.speed;
    if (super.x % 2 == 0){
      this.y += 4;
    }else{
      this.y -= 4;
    }
    if(this.x >= width){
      this.x = -100;
    }

    shape(tail);


  }
}
