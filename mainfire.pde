
TRIANGLE[] particlesarrayr;

int arraysize = 250000;
int numParticles = 0;
int numParticlesr = 0;
float y_fire_start = 500;
void setup(){
   size(1000, 1000, P3D);
   particlesarrayr = new TRIANGLE[arraysize];
}


void draw(){
  // update();
   background(0, 0, 0);
   noStroke(); lights();
   
   //moon
   fill(250, 250, 200);
   circle( 50, 50, 100);   
   
   //log
   fill(100, 75, 0);
 
   pushMatrix();
  
   rect(400, 495, 200, 25, 25);
  
      popMatrix();
    particlesarrayr[numParticles] = new TRIANGLE(random(400, 600), random(300, y_fire_start));

    numParticles = numParticles + 1;
            
    for(int i = 0; i < numParticles; i=i+1){
  
      if( (particlesarrayr[i].xposition >= 500 & particlesarrayr[i].yposition < random(0, y_fire_start) & particlesarrayr[i].xvelocity == 10) || 
      (particlesarrayr[i].xposition < 500 & particlesarrayr[i].yposition < random(0, y_fire_start) & particlesarrayr[i].xvelocity == -10 )){
                  
         particlesarrayr[i] = new TRIANGLE(random(400, 600), y_fire_start); 
     }
    
  }    
 
      
   for (int i = 0; i < numParticles; i = i+1) {
     
       particlesarrayr[i].display();
}
  
  print(numParticles);
  print("\n");
  println(frameRate);



  
}//draw
