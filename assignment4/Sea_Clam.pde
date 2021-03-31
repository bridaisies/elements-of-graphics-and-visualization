class seaClam {
  float r1, r2, r3, r4;
  float r;
  float s;


  seaClam(float r1, float r2, float r3, float r4){
      this.r1 = r1;
      this.r2 = r2;
      this.r3 = r3;
      this.r4 = r4;
    }

  void create1(){
    
    fill(color(173, 216, 230));
    stroke(color(173, 216, 230));
    rect(r1,r2,r3,r4); //  base of the clam 
    
    pushMatrix(); // rotation of the top half of the clam 
    translate(r1-5,r2-10);
    rotate(-0.1*r);
    rect(0,0,r3,r4);
    //r += 1;
    if (r < 13){
      r += 0.5;
    } 
    popMatrix();
    fill(color(243, 236, 236));
    stroke(color(243, 236, 236));
    ellipse(r1+20,r2-10,30,30); //the pearl
    
    
    fill(color(229, 136, 136));
    stroke(color(229, 136, 136));
    pushMatrix();
    translate(8*sin(s),8*cos(s));
    s += 0.1;
    ellipse(r1+20,r2-10,10,10); // the shine on the pearl that makes it rotate
    popMatrix();
    
  }


}
