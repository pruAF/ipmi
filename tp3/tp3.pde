 //Priscila Ayelen Fernandez 119022/8 
  
  PImage opart;
  int cant=20;
  int tam = 20;
  int x=0;
  int y=0;



  
void setup (){
  size (800 , 400);
  opart = loadImage ("opart.jpg"); 
  image (opart, 400, 0, 400, 400);
  frameRate (10);

  }
void draw (){
  fill (255);
  rect (0,0,400,400);
  
 for (int x=0 ; x<cant ; x++){ 
   for (int y=0 ; y<cant; y++){
      noStroke();
           if ((x+y)%2==0){ 
             fill (0);
              float d = dist( mouseX,mouseY, width/2,height/2);
              float tam1 = map( d, 0, 220, tam, 0 );
               ellipse (x*tam+10,y*tam+10,tam1,tam1);
               }
     else{
           if (keyPressed){
            key = 'c';
              fill (random (255), random (255), random (255));
              } 
     else{   
          fill(0);
         }
           rect (x*tam, y*tam,tam,tam);
    }
   }
 }
}



 
