void setup() {
  size(500, 500);
}


void draw () {
  
  background(224, 187, 228);
  color a = color(254, 200, 216, 200);
  color b = color(255, 223, 211, 200);
  color c = color(210, 145, 188, 200);
  color d = color(149, 125, 173, 200);
  color e = color(254, 200, 216);
  color f = color(209, 207, 192);
  color g = color(255, 223, 211);
  blendMode(BLEND);
  
  stroke(240, 225, 225);
  strokeWeight(0.1);
  
  fill(d);
  rect(0, 0, 100, 100);
  
  fill(a);
  rect(50, 50, 100, 100);
  
  strokeWeight(2);
  fill(b);
  rect(150, 150, 100, 50);
  
  strokeWeight(0.01);
  fill(c);
  rect(250, 250, 100, 100);
  
  fill(d);
  rect(350, 350, 100, 100);
  
  fill(e, 100);
  rect(100, 100, 100, 100);

  fill(f, 100);
  rect(200, 200, 100, 100);
  
  strokeWeight(1.2);
  fill(g, 100);
  rect(300, 300, 100, 100);
  
  strokeWeight(0.01);
  fill(b, 150);
  rect(400, 400, 100, 100);
  
  
  fill(c, 75);
  quad(250, 100, 250, 250, 400, 250, 500, 0);
  quad(100, 250, 250, 250, 250, 400, 0, 500);
  
  fill(b, 65);
  rect(350, 350, 150, 150);
  rect(250, 250, 150, 150);
  rect(150, 150, 150, 150);
  rect(50, 50, 150, 150);
  
  strokeWeight(1);
  rect(-50, -50, 150, 150);
  
  triangle(250, 250, 250, 100, 350, 150);
  fill(b, 25);
  strokeWeight(0.01);
  triangle(250, 250, 400, 250, 350, 150);
  fill(c, 50);
  triangle(350, 150, 400, 250, 500, 0);
  
  strokeWeight(0.5);
  fill(d, 50);
  triangle(250, 250, 100, 250, 150, 350);
  fill(a, 100);
  triangle(250, 250, 250, 400, 150, 350);
  fill(b, 100);
  triangle(150, 350, 250, 400, 0, 500);
  
  line(0, 500, 125, 300);
  line(125, 300, 250, 250);
  line(0, 500, 200, 375);
  line(200, 375, 250, 250);
  
  line(500, 0, 300, 125);
  line(300, 125, 250, 250);
  line(500, 0, 375, 200);
  line(375, 200, 250, 250);
  
  
  fill(d, 50);
  rect(200, 0, 150, 150);
  fill(b, 50);
  rect(50, 300, 150, 150);
  fill(e, 100);
  rect(400, 250, 150, 150);
  
  fill(b, 75);
  triangle(500, 0, 500, 250, 400, 250);
  
  rect(0, 250, 100, 100);
  fill(c);
  rect(50, 300, 50, 50);
  
  fill(d, 100);
  triangle(500, 0, 400, 250, 375, 200);
  
}
