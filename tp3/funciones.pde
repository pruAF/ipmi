 void circulos (float x, float y, float t){
  noStroke();
  fill (0);
  circle (x+400,y,t);
}

void cuadrados (float x, float y, float t){
  noStroke();
  if (keyPressed){
         key = 'c';
         fill (random (255),0, random (255));
  } 
  else{
         fill(0);
  }
         rect (x+400,y,t,t);
}

boolean estoysobreObra(float x, float y, float t){  
  if( mouseX > width/2 ){
    return true;
  }
  else{
    return false;
  }
}
