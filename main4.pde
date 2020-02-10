PARTICLE[] particlesarray;
STREAM[] particlesarrayr;
int count = 0;
int arraysize = 250000;
int numParticles = 0;
int numParticlesr = 0;
float radius = 40;
void setup(){
   background(0, 0, 0);
   size(1000, 1000, P3D);
   lights();
   particlesarray = new PARTICLE[arraysize];

}


void draw(){ 
   
   
   
     
   noStroke();
   fill(200, 200, 200);
   circle( 50, 50, 100);
   
   fill(0, 75, 200, 255);
   rect(0, 500, 1000, 500);
   
   //walls
   fill(100, 75, 0);
   rect(0, 250, 400, 250);
   
   fill(100, 75, 0);
   rect(400, 300, 150, 200);
   
   fill(100, 75, 0);
   rect(550, 250, 450, 250);

// add if statement to avoid null 

    for(int i = 0; i < 15; i = i+1){
    
     // for water fall //250 and 550
    particlesarray[numParticles] = new PARTICLE(random(400, 550), 290, random(600, 650), 9.8, second(), 20);
    numParticles = numParticles + 1;
    
    }
 
    
    for(int i = 0; i < numParticles; i=i+1){
  
      if( (particlesarray[i].acceleration == 0)){
                  
         particlesarray[i] = new PARTICLE(random(400, 550), 290, random(600, 650), 9.8, second(), 20); 
     
   
       }
    }
      
   for (int i = 0; i < numParticles; i = i+1) {
     
     if(abs(dist( mouseX, mouseY, particlesarray[i].xposition , particlesarray[i].yposition)) < radius/2 && mousePressed){
       
      
      //circle(particlesarray[i].xposition -10, particlesarray[i].yposition - 10, 50);
     
     }
     
     else{
     
       particlesarray[i].display();
     }
      
  }
  
  if(mousePressed){
  
   if( mouseY < 310){
 
      
   fill(255, 255, 255, random(0, 250));
  
   circle( mouseX, mouseY, 5);
   }
   
   else{
     
    fill(255, 0, 0);
   
   circle( mouseX, mouseY, radius);
   
   
   }
   
  
    
  }
  
  print(numParticles);
  print("\n");
  println(frameRate);

}//draw
