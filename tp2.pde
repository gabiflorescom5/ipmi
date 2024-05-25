//Trabajo Práctico 2: Variables y Condicionales
//Alumno: Flores Gabriel
//Comisión: 3
//DNI: 44699799
//Profesor: David Bedoian 

//Mis variables declaradas
float optx, optx2;
float posX, posY, posXfuera, posYfuera;
int contador, contador2, contador3, contador4, contador5; 
int estado;
int tamDeText,tamXcaja,tamYcaja;
PFont miFuente, miFuente2, miFuente3;
PImage img1,img2,img3,img4,img5,img6,img7,img8,img9;
String text1,text2,text3,text4,text5,text6,text7,text8,text9;


void setup() {

 size(640,480);
 //asignacion de estado y contador
 contador  =0;
 contador2 =0;
 contador3 =0;
 contador4 =0;
 contador5 =0;
 estado = 1;
 optx = 255;
 optx2 = 255;
 tamDeText =35;
 tamXcaja = 0;
 tamYcaja = 0;
 
 
 //asignacion de imagenes
 img1 = loadImage("inicio.jpg");
 img2 = loadImage("totems1.jpg");
 img3 = loadImage("totems2.jpg");
 img4 = loadImage("jaguar1.jpg");
 img5 = loadImage("jaguar2.jpg");
 img6 = loadImage("serp1.jpg");
 img7 = loadImage("serp2.jpg");
 img8 = loadImage("serp3.png");
 img9 = loadImage("serp4.jpg");

//asignacion de textos
miFuente = loadFont("data/ArialRoundedMTBold-48.vlw") ;
miFuente2 =loadFont("data/BodoniMT-BoldItalic-48.vlw");
miFuente3 = loadFont("data/FranklinGothic-Heavy-48.vlw");
 posX = 70;
 posY = 350; 
 posXfuera = 640;
 posYfuera =-100;
 text1 = "La serpiente y el Jaguar\nLaura Spivak, 2019\n\nLa muestra pertenece al colectivo de arte electrónico Biopus. En ella encontraran por un lado una serpiente de gran escala que el público, a través de dispositivos electrónicos, pudo intervenir con textos que irán apareciendo sobre el cuerpo de la serpiente y por otro, encontraran sobre un gran mural un jaguar que dialoga con una serie de tótems portadores de figuras devocionales contemporáneas.";
 text2 = "A continuación les muestro algunas imagenes de los totems. Los mismos se encuentran en una sala a oscuras.";
 text3 = "Los participantes pueden dar a aquellos totems suaves golpes. En ese momento se encenderán luces de colores en su interior y se escuchara además como si se estuviesen tocando tambores.";
 text4 = "Sobre una gran pared veremos la representacion del rostro de un jaguar con luces, formas y colores que van cambiando.";
 text5 = "El Jaguar dialoga con los totems.";
 text6 = "La Serpiente es una instalación interactiva de gran escala que invita al publico a participar a través de dispositivos electrónicos.";
 text7 = "La piel de la serpiente contiene respuestas del publico a preguntas que los artistas hicieron a través de su pagina web";
 text8 = "Si visitan la muestra podrán entrar por la boca de la serpiente y recorrer su cuerpo mientras distintas luces y los mensajes de distintos colores se prenden y apagan con el recorrer de los participantes.";
 text9 = "VOLVER A EMPEZAR"; 
}

void draw(){
  
println("estado"+ estado);
 
//PANTALLAS
//pantalla inicio

if(estado == 1){
  image(img1, 0,0,width, height);
  fill(255,0,0);
  textFont(miFuente);
  textSize(35);
  text(text1,posX,posY, 450,900);
  posY-=1;
}
//transición de pantalla 1 a 2
if(posY<=-890){
 posX = 70;
 posY = 250;
 estado=2;
 contador =0;
 
}
//pantalla 2 
  else if(estado == 2){
   
  image(img2, 0,0,width, height);
  fill(36,252,180);
  textFont(miFuente2);
  textSize(35);
  text(text2,posX,posY,450,500);
  
  posX+=1;

}

//transicion de pantalla 2 a 3
  if(posX>=width){
    
    estado=3;
    posX = 70;
  }

//pantalla 3 con opacidad de texto
  else if(estado == 3){ 
  
  image(img3, 0,0,width, height);
  fill(255,optx);
  textFont(miFuente3);
  textSize(35);
  text(text3,20,200,600,600);
  contador++;
 
}
//transicion de pantalla 3 a la 4
  if(contador>=210){
    optx--;
}
  if(optx<=0){
  estado=4;
  contador = 0;
  optx =255;
}

//pantalla 4    
  else if(estado == 4){
    fill(255,255,0);
  image(img4, 0,0,width, height);
  pushStyle();
  textAlign(CENTER);
  textSize(tamDeText);
  text(text4,20,300,600,600);
  popStyle();
  contador2++;
}
//transicion de pantalla 4 a 5
 if(contador2>=300){
  tamDeText-=1;
}
 if(tamDeText<=0){
  estado= 5;
  tamDeText = 35;
  contador2=0;
}
//pantalla 5
 else if(estado == 5){
  image(img5, 0,0,width, height);
  fill(255,62,220);
  textSize(tamDeText);
  text(text5,posXfuera,300);
  posXfuera--;
}
//transicion de pantalla 5 a 6

 if(posXfuera<=10){
  estado=6;
  posXfuera=640;
}

//pantalla 6

 if(estado == 6){   
  image(img6, 0,0,width, height);
  fill(#3EF7FF);
  textSize(tamDeText);
  text(text6,20,posYfuera,600,600);
  posYfuera++;
}
//transición de pantalla 6 a la 7
if(posYfuera>=height){
estado=7;
posYfuera=-100;
}

//pantalla 7
  else if(estado == 7){
  image(img7, 0,0,width, height);
  fill(#FF7300, optx2);
  textAlign(LEFT);
  textSize(map(optx2,255,0,35,150));
  text(text7,20,100,300,600);
  contador4++;
  
}
//transicion de pantalla 7 a la 8
if(contador4>=300){
 optx2--;
}
if(optx2<=0){
estado=8;
contador4= 0;
optx2=255;
}

//pantalla 8
  else if(estado == 8){
  tamDeText=35;
  fill(#E000FF);
  image(img8, 0,0,width, height);
  textSize(tamDeText);
  text(text8,20,100, 600,tamYcaja);
  tamYcaja++;
}
//transición de pantalla 8 a la final
if(tamYcaja>=500){
contador5++;
}
if(contador5>=60){
estado =9;
contador5=0;
tamYcaja=0;
}
//pantalla final:  
  else if(estado == 9){
  tamYcaja=0;
  image(img9, 0,0,width, height);
  fill(255,0,0);
  rect(200,300,200,80);
  pushStyle();
  fill(255);
  textAlign(CENTER);
  text("GRACIAS POR VER", width/2, height/2);
  popStyle();
  pushStyle();
  fill(0);
  textSize(17);
  text(text9,211,345);
  popStyle();
  
}

}

void mousePressed(){
estado++;
if(estado>9)
if(mouseX>200 && mouseX<200+200 && mouseY>300 && mouseY<300+80){
estado = 1;
posX = 70;
posY = 350;
fill(255,0,0);
}

}
