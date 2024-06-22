void rectangulosRotados(){
 

 for(int x=0; x<cantX; x++){
  //
       

  for(int y=0; y<cantY;y++){
 //rotate(PI/8);
   if(x%2==0){
    fill(colorRect1);
   
    }else{fill(colorRect2);}  
    
//si me posiciono en las cordenadas mayor a 400 de x se mueven a la derecha
    if(avanzar){
    if ( y%2==0 ){
        despX = (frameCount/2)%anchoRect*2; 
        }
    }
    
    quad(400+x*anchoRect+despX,0+y*anchoRect,452+x*anchoRect+despX,-52+y*anchoRect, 504+x*anchoRect+despX,0+y*anchoRect,452+x*anchoRect+despX,52+y*anchoRect);
    }
   
 }
  
}
void mousePressed(){
  println(mouseX,","+mouseY);
//si hago click el desplazamiento de los cuadrados vuelve a cero  
  if(avanzar){
  avanzar=false;
  }else{avanzar=true; }
  //despX=0;
  
  
  
 }
 
 
 
 
