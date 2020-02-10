
class PARTICLE {
  
  float yposition; float xposition; float yvelocity = 0; float xvelocity;
  float radius = 11; float floor; float wall = 600; int green; float startTime; float acceleration = 9.8;
  //constructor
  PARTICLE(float i_xposition, float i_yposition, float i_floor, float i_acceleration, float i_startTime, float i_xvelocity){
    
    xposition = i_xposition;
    yposition = i_yposition;
    floor = i_floor;
    acceleration = i_acceleration;
    xvelocity = i_xvelocity;
    startTime = i_startTime;
  }
  
void computePhysics(float dt){

 
 yvelocity = yvelocity + acceleration * dt;
 yposition = yposition + yvelocity * dt;
 if(yposition + radius > floor){
    yposition = floor - radius;
    acceleration = 0;
   // yvelocity *=-.95;   
 }
   xposition = xposition + xvelocity * dt;
} 
  
 void display(){   
  computePhysics(.05);
  fill(255, 255, 255,random(50,100));
  stroke(255,255, 255, random(50,100));
 
  //noStroke();
  pushMatrix();
  translate(xposition,yposition); circle(0, 0, radius);
 
  popMatrix();
  }
}
