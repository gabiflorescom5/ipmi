//Alumno: Flores Gabriel
//Legajo:95517/5
//DNI:44699799
//comisión: 3 de 14hs a 16hs
//Profe: David Bedoian
//Tp1: autoretrato


PImage imagen;

void setup(){

  size(800,400);
imagen = loadImage("kusanagi.jpg");
imagen.resize(400,400);

}

void draw(){
  background(255);
  image(imagen,0,0);
   
//tono de piel y cara
  fill(181,121,71);

//pecho
  ellipse(591,169,70,150);
 
  
//sombras del pecho
pushStyle();
 fill(90,38,24);
  stroke(90,38,24);
 beginShape();
  vertex(563,129);
  vertex(573,156);
  vertex(597,169);
  vertex(589,186);
  vertex(585,175);
  vertex(585,188);
  vertex(577,182);
  vertex(575,172);
  vertex(567,169);
  vertex(569,205);
  vertex(580,193);
  vertex(587,196);
  vertex(597,190);
  vertex(606,174);
  vertex(608,174);
  vertex(602,188);
  vertex(618,183);
  vertex(622,134);
 endShape(); 
popStyle();  

//cara
 ellipse(593,80,75,150);
  
//sombras de la cara
pushStyle();
  fill(90,38,24);
  stroke(90,38,24);
 beginShape();
  vertex(597,156);
  vertex(595,151);
  vertex(587,149);
  vertex(587,147);
  vertex(595,147);
  vertex(600,135);
  vertex(594,135);
  vertex(588,130);
  vertex(593,130);
  vertex(599,126);
  vertex(596,104);
  vertex(599,104);
  vertex(613,118);
  vertex(622,97);
  vertex(624,116);
  vertex(619,132);
  vertex(611,142);
  vertex(605,151);
 endShape();
  line(587,109,589,95);
  line(589,95,585,86);
  line(602,86,595,97);
popStyle();

//boca
pushStyle();
  fill(200);
 beginShape();
  vertex(612,130);
  vertex(605,138);
  vertex(599,143);
  vertex(586,143);
  vertex(580,138);
  vertex(576,131);
  vertex(585,137);
  vertex(592,138);
  vertex(601,138);
  vertex(612,130);
 endShape();

//ojo blanco

 beginShape();
  vertex(583,103);
  vertex(575,104);
  vertex(569,102);
  vertex(566,95);
  vertex(572,94);
  vertex(583,103);
 endShape();
popStyle();


//ojo negro
pushStyle();
 fill(0);
 beginShape();
  vertex(602,103);
  vertex(609,105);
  vertex(614,103);
  vertex(619,94);
  vertex(612,94);
  vertex(607,98);
 endShape();
popStyle();

//iris de los ojos
pushStyle();
 fill(255,0,0);
  circle(575,99,5);
  circle(611,99,5);
popStyle();
  
//cejas
pushStyle();
 stroke(66,20,11);
 strokeWeight(3.5);
  line(585,100,571,90);
  line(600,100,620,91);

popStyle();

//partes de la chaqueta
pushStyle();
 fill(61,56,62);
  quad(434,288,499,317,509,296,463,179);
  quad(511,297,573,314,573,399,508,351);
  quad(570,205,572,315,509,298,464,179);
  triangle(568,204,464,179,567,164);
  triangle(548,168,538,154,464,178);
  quad(567,164,548,166,539,153,546,139);
  quad(616,399,679,365,685,295,615,326);
  quad(686,294,724,180,619,180,617,326);
  quad(725,181,754,288,692,315,686,294);
popStyle();


 
//brazos
 beginShape();
  vertex(431,326);
  vertex(420,337);
  vertex(411,352);
  vertex(401,375);
  vertex(400,399);
  vertex(459,399);
  vertex(467,388);
  vertex(475,372);
  vertex(478,363);
  vertex(479,351);
  vertex(465,330);
  vertex(426,324);
 endShape();

 beginShape();
  vertex(711,348);
  vertex(714,359);
  vertex(718,374);
  vertex(725,391);
  vertex(730,399);
  vertex(796,399);
  vertex(793,384);
  vertex(788,369);
  vertex(782,355);
  vertex(777,347);
  vertex(766,336);
  vertex(762,323);
  vertex(741,321);
  vertex(719,333);
  vertex(711,349);
 endShape();
 
//sombras del brazo derecho
pushStyle();
 fill(90,38,24);
  stroke(90,38,24);
 beginShape();
   vertex(451,329);
   vertex(450,337);
   vertex(446,343);
   vertex(441,348);
   vertex(438,345);
   vertex(437,364);
   vertex(441,358);
   vertex(447,353);
   vertex(457,350);
   vertex(460,352);
   vertex(460,363);
   vertex(454,377);
   vertex(443,393);
   vertex(440,399);
   vertex(466,399);
   vertex(472,385);
   vertex(475,374);
   vertex(477,359);
   vertex(480,350);
   vertex(467,329);
   vertex(451,329);
 endShape();
//sombras del brazo izquierdo
 beginShape();
 vertex(709,350);
 vertex(714,354);
 vertex(715,345);
 vertex(723,335);
 vertex(735,332);
 vertex(740,340);
 vertex(740,344);
 vertex(733,346);
 vertex(750,362);
 vertex(750,356);
 vertex(752,344);
 vertex(763,362);
 vertex(766,376);
 vertex(772,399);
 vertex(796,399);
 vertex(791,377);
 vertex(785,361);
 vertex(781,351);
 vertex(770,340);
 vertex(765,335);
 vertex(763,323);
 vertex(742,319);
 vertex(719,331);
 vertex(710,349);
 
 endShape();

popStyle();

 
//partes blancas de la ropa
  pushStyle();
  fill(255);
  rect(553,50,80,35);
  quad(425,325,433,289,479,295,465,330);
  quad(702,305,729,287,741,320,717,333);
  quad(570,205,617,205,615,400,573,400);
  popStyle();
  
//sombras de la parte blanca
 pushStyle();
  fill(100);
  quad(466,329,481,352,498,315,479,297);
  quad(704,305,692,315,708,350,717,333);
  quad(729,287,754,288,765,322,742,319);
  stroke(100);
  line(610,370,593,372);
  line(600,218,587,220);
  line(595,223,590,224);
  line(598,394,609,389);
 beginShape();
  vertex(573,277);
  vertex(578,285);
  vertex(582,288);
  vertex(591,290);
  vertex(600,288);
  vertex(611,283);
  vertex(618,277);
  vertex(617,300);
  vertex(609,297);
  vertex(601,297);
  vertex(588,300);
  vertex(577,300);
  vertex(577,305);
  vertex(578,311);
  vertex(580,313);
  vertex(585,313);
  vertex(605,313);
  vertex(597,310);
  vertex(585,306);
  vertex(599,305);
  vertex(617,307);
  vertex(617,328);
  vertex(611,325);
  vertex(601,319);
  vertex(587,317);
  vertex(584,320);
  vertex(579,326);
  vertex(580,340);
  vertex(578,362);
  vertex(585,365);
  vertex(578,367);
  vertex(578,373);
  vertex(577,384);
  vertex(595,387);
  vertex(579,390);
  vertex(580,396);
  vertex(574,395);
  vertex(573,276);
 
 endShape();  
popStyle();

  //sombras de la chaqueta
pushStyle();
  fill(25,20,26);
  triangle(724,180,620,180,639,151);
  triangle(562,127,558,151,547,139);
  triangle(619,182,620,133,645,144);
  triangle(518,359,521,399,574,399);
  triangle(671,369,669,399,617,399);
  triangle(499,316,510,296,484,239);
  triangle(563,313,532,304,525,287);
  triangle(521,303,509,350,512,298);
  quad(571,223,574,231,578,399,573,399);
  quad(611,232,616,225,621,399,610,399);
  quad(680,363,663,374,662,306,690,247);
  quad(693,247,705,303,692,314,688,294);
  quad(726,184,716,213,730,287,753,288);
  quad(498,315,478,295,435,288,493,284);
  quad(530,302,511,298,476,211,504,240);
 popStyle();
  
//cabello
pushStyle();
  fill(72,16,1);
 beginShape();
  vertex(562,123);
  vertex(578,51);
  vertex(592,50);
  vertex(614,100);
  vertex(616,76);
  vertex(627,117);
  vertex(635,110);
  vertex(641,95);
  vertex(645,79);
  vertex(646,60);
  vertex(642,42);
  vertex(632,20);
  vertex(624,6);
  vertex(611,1);
  vertex(573,0);
  vertex(559,6);
  vertex(546,23);
  vertex(541,38);
  vertex(538,62);
  vertex(538,77);
  vertex(545,95);
 endShape();
popStyle();

//botones de la camisa
  circle(555,366,11);
  circle(555,327,11);
  circle(555,286,11);
  circle(556,240,11);
  circle(560,196,11);
  circle(557,165,10);

}

void mousePressed(){
  println(mouseX,","+mouseY);
}
