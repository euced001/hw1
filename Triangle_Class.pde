
class TRIANGLE{
  
  int  count = 0;
  float yposition; float xposition; float yvelocity = -5; float xvelocity;
  float radius = 11; float floor; float wall = 600; int green; float startTime; float acceleration = -9.8;
  //constructor
  TRIANGLE(float i_xposition, float i_yposition){
    
    xposition = i_xposition;
    yposition = i_yposition;
    if(xposition <= 500){
      xvelocity = 10;
     
    }
    else{
    xvelocity = -10;
    }
  }
  
void computePhysics(float dt){
  

yvelocity = yvelocity + acceleration * dt;
yposition = yposition + yvelocity * dt;  
xposition = xposition + xvelocity * dt;


} 
  
 void display(){   
  computePhysics(.05);
  
  if(yposition> random(250, 275)){
     
    fill(255, 100, 50 ,random(50,100));
  }
  else if (yposition < random(0, 255)){
  
  fill(255, 255, 0,random(50,100));
  }

  stroke(255,255, 0, random(50,100));
 
  //noStroke();
  pushMatrix();
  
  translate(xposition,yposition); circle(0, 0, radius);

  popMatrix();
  
}
}
