//TP#3 opart con funciones y ciclos FOR
//ALumno: Flores Gabriel - legajo:95517/5
//comision 3 - Profesor David Bedoian
//ipmi 1
//link al video explicativo: https://youtu.be/TpjFOU-dei0
//Nota: no pude grabarme mas con la camara por problemas de almacenamiento

//declaración
boolean avanzar = false;
float despX;
int cantX;
int cantY;
int anchoRect;
float colorRect1,colorRect2;
PImage imagenOptica;
float rojo,verde,azul;

void setup(){
  
 size(800, 400);
//asignaciones
 despX =0;
 imagenOptica = loadImage("F_45.jpeg");
 cantX =6;
 cantY =6;
 colorRect1=200;
 colorRect2=0;
 anchoRect = 74;
 rojo=255;
 verde=255;
 azul=255;
 
 
//tamaño de los cuadrados inclinados (ancho y alto)
 float d=dist(0,72,54,22);
 println(d);
 //73.59 = ancho y alto de los cuadrados, redondeamos a 74!
 //ya puedo empezar a darle tamaño a los cuadrados

}
 
void draw(){
 background(rojo,verde,azul);
 image (imagenOptica,0,0,width/2, height);
 

  
 rectangulosRotados();
 animacionDeColores();
 
}



void animacionDeColores(){
 //pintar el fondo de modo random y intercambio de colores 
//con los cuadrados
 if(key=='d'){
  colorRect1--;
  colorRect2++;
  rojo=(random(0,255));
  verde=(random(0,255));
  azul=(random(0,255));
  
  }
//regresar a la normalidad
  if(key=='f'){
  colorRect1=200;
  colorRect2=0; 
  rojo=255;
  verde=255;
  azul=255;
  despX=0;
  }
 }
 
 
