//Priscila Ayelen Fernandez
//Comisión 2


//imagenes de las diapositivas.
PImage portada;
PImage pag2,pag3,pag4,pag5,pag6,pag7,pagfin; 
PFont l4d; 

//variables
int bajada;
int estado;
String Start;
String texto1;
String texto2;
String texto3;
String texto4;
String texto5;
String fin;
String Reiniciar; 

void setup () {
size (640, 480);
frameRate (90);

//valores
bajada = 100;
Start = "Press [z] to start";
texto1 = "Left 4 Dead es un videojuego \n shooting de terror en primera persona, \n ambientado durante los inicios \n de un brote de zombies en la \n Costa Este de los Estados Unidos";
texto2 = "Este cuenta \n con varias \n campañas y \n distintos mapas \n increibles";
texto3 = "A parte de los \n zombies normales, \n tambien hay varios zombies \n especiales que aumentaran la \n dificultad del juego";
texto4 = "Su ambientación esta \n muy bien lograda, \n ya que provoca tensión \n a través de los \n mapas y la música.";
texto5 = "Recuerda no \n molestar a la \n witch \n O MORIRÁS!...";
fin = "Fin";
Reiniciar = "Press [z] to restart";
estado = 0;
l4d = loadFont ("l4d.vlw");

//imagenes
portada = loadImage ("portada.png");
pag2 = loadImage ("pag2.jpg");
pag3 = loadImage ("pag3.jpg");
pag4 = loadImage ("pag4.jpg");
pag5 = loadImage ("pag5.jpg");
pag6 = loadImage ("pag6.jpg");
pag7 = loadImage ("pag7.jpg");
pagfin = loadImage ("fin.jpg");
  

}
  
  void draw (){
    println (frameCount/60);
     bajada = frameCount;
     
     //pag1
     if (estado ==0){
     image (portada, 0, 0, 640, 480);
     fill(255, 0, 0 );
     textSize( 60 );
     textAlign (CENTER);
     textFont (l4d);
     text( Start, 320, 300);
     }
     
     //pag2
     if (estado == 1){
     image (pag2, 0, 0, 640, 480 );
      fill (255);
      textSize (33);
      textAlign (CENTER);
      text (texto1, 320, 480-bajada);
      if (frameCount/60 >= 11){
       frameCount = 0;
       estado = 2;
      }
     }
     
     
     //pag3
     if (estado == 2){
     image (pag3, 0, 0, 640, 480);
     textAlign (RIGHT);
     text (texto2, 628, bajada);
     if (frameCount/60 >= 10){
       frameCount = 0;
       estado = 3;
      }
     }
     
     //pag4
      if (estado == 3){
     image (pag4, 0, 0, 640, 480);
     textAlign (CENTER);
     text (texto3, 300, 480-bajada);
     if (frameCount/60 >= 12){
       frameCount = 0;
       estado = 4;
      }
     }
     
     //pag5
      if (estado == 4){
     image (pag5, 0, 0, 640, 480);
     textAlign (LEFT);
     text (texto4, 50, 480-bajada);
     if (frameCount/60 >= 12){
       frameCount = 0;
       estado = 5;
      }
     }
     
     //pag6
      if (estado == 5){
     image (pag6, 0, 0, 640, 480);
     if (frameCount/60 >= 6){
       frameCount = 0;
       estado = 6;
      }
     }
     
     //pag7
      if (estado == 6){
     image (pag7, 0, 0, 640, 480);
     textAlign (CENTER);
     text (texto5, 500, 280);
     if (frameCount/60 >= 7){
       frameCount = 0;
       estado = 7;
      }
     }
     
     //final
        if (estado == 7){
        image (pagfin, 0, 0, 640, 480);
        fill (250, 0, 20);
        textSize (100);
        text (fin, 300, 250);
        textSize (60);
        textAlign (CENTER);
        text (Reiniciar, 320, 350); 
     }
     
  }
  
  void keyPressed(){
      if (estado == 0 && key == 'z') {
      frameCount = 1;
      estado = 1;
      }
      
      if (estado == 7 && key == 'z') {
      frameCount = 1;
      estado = 0;
      }
     
  }
    
    
   
  
    
    

       
 
