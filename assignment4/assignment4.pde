seaweed seaweed1;
seaweed seaweed2;
seaweed seaweed3;
tailfin fshtail;
tailfin fshtail2;
bubbles bubble1;
bubbles bubble2;
bubblesTrail bubble3, bubble4, bubble5;
seaClam seaClam1;

Starfish s1, s2, s3;

void setup(){
  background(210);
  size(500, 500);
  //declaring all the new objects
  seaweed1 = new seaweed(50, 495, 20, 420, 65, 470, 45, 400, 0.5);
  seaweed2 = new seaweed(70, 495, 40, 420, 85, 470, 65, 400, 0.5);
  seaweed3 = new seaweed(30, 495, 0, 420, 45, 470, 25, 400, 0.5);
  fshtail = new tailfin(0,200,1);
  fshtail2 = new tailfin(0,100,3);
  bubble1 = new bubbles(110, 200, 8, 1);
  bubble2 = new bubbles(140, 245, 8, 1);
  bubble3 = new bubblesTrail(5, 285, 8, 1);
  bubble4 = new bubblesTrail(25, 285, 7, 1);
  bubble5 = new bubblesTrail(35, 285, 9, 1);
  seaClam1 = new seaClam(80,410,100,20);
  
  
  s1 = new Starfish(150, 50, 35, 0.5);
  s1.setMaxY(225);
  s2 = new Starfish(50, 100, 20, 2);
  s2.setMaxY(225);
  s3 = new Starfish(200, 50, 15, 1);
  s3.setMaxY(225);
}


void draw(){
  //creating the ocean floor
  background(0, 119, 190);
  fill(color(229, 224, 92));
  rect(0,420,500,200);
  
  //creating all the animations
  seaClam1.create1();
  fshtail.display();
  fshtail.move();
  fshtail2.display();
  fshtail2.move();
  seaweed1.display();
  seaweed1.move();
  seaweed2.display();
  seaweed2.move();
  seaweed3.display();
  seaweed3.move();
  bubble1.display();
  bubble1.move();
  bubble2.display();
  bubble2.move();
  bubble3.display();
  bubble3.move();
  bubble4.display();
  bubble4.move();
  bubble5.display();
  bubble5.move();
 
 
  s1.display();
  s1.move();
  s2.display();
  s2.move();
  s3.display();
  s3.move();
  
}
