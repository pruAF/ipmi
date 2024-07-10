//Priscila Fernandez
//119022/8
//https://youtu.be/bHGvzTvFIFQ

PImage opart;
int cant=20;
int mod=20;

void setup () {
  size (800, 400);
  opart = loadImage ("opart.jpg");
  image (opart, 0, 0, 400, 400);
  frameRate (10);
}
void draw (){
  fill (255);
  rect (400, 0, 400, 400);
  for (int x=0; x<cant; x++){
    for (int y=0; y<cant; y++){
      if ((x+y)%2==0){
        if (estoysobreObra(x, y, 400)){
          float d = dist(mouseX, mouseY, 40*mod+10, y*mod+10);
          float tam = map( d, 0, 565, mod/2, mod*2);
          circulos (x*mod+10, y*mod+10, tam);
         }else {
          circulos (x*mod+10, y*mod+10, cant);
         }
       }else {
        cuadrados (x*mod, y*mod, cant);
      }
    }
  }
}
