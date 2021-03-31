class Starfish {
  
  PShape star;
  float x, y, radius, speed;
  color fillColor;
  float maxY;
  
  public Starfish(float x, float y, float r, float s) {
    this.x = x;
    this.y = y;
    this.radius = r;
    this.speed = s;
    
    this.fillColor = color(#E310C7);
    this.maxY = height;
  }
  
  
  void display() {
    
    float angle = TWO_PI / 5;
    float halfAngle = angle/2.0;
    pushMatrix();
    translate(x, y);
    star = createShape();
    star.setFill(fillColor);
    star.beginShape();
    for (float a = 0; a < TWO_PI; a += angle) {
      float sx = x + cos(a) * (radius * 0.3);
      float sy = y + sin(a) * (radius * 0.3);
      star.vertex(sx, sy);
      sx = x + cos(a+halfAngle) * radius;
      sy = y + sin(a+halfAngle) * radius;
      star.vertex(sx, sy);
    }
    endShape(CLOSE);
    shape(star);
    popMatrix();
  }
  
  void setFillColor(color c) {
    this.fillColor = c;
  }
  
  void setMaxY(float y) {
    this.maxY = y;
  }
  
  void move() {
    if (this.y < this.maxY) {
      this.y += speed;
    }
  
  }

}
