
//Lamas Ernestina
//Comisión 1
PImage gato;
void setup () {
  size (800,400);
  background (255);
  gato = loadImage("gato.png");
  
}

void draw () {
  image(gato,460, 1, 416,394);
  fill (245);
  triangle (212,28,188,111,266,96);
 triangle (370,28,317,73,365,102);
 ellipse(240,190,90,220);
  ellipse(330,220,85,170);
  ellipse(275,190,90,220);
  ellipse (279,134,200,140);
  fill (255, 227, 210);
  triangle (215,43,202,91,236,71);
  triangle (362,42,327,71,359,89);
  triangle (252,67,257,78,264,64);
  triangle (269,63,272,75,277,64);
  triangle (283,63,285,76,297,64);
  triangle (186,109,206,114,182,122);
  triangle (180,127,205,129,179,137);
  triangle (373,108,354,114,375,115);
  triangle (377,119,350,130,378,131);
  fill (10);
  circle (236,115,38);
  circle (307,117,38);
  triangle (265,125,280,125,272,135);
  line (195, 140, 166, 141);
  line (168,156,196,147);
  line (350,133,384,125);
  line(352,136,384,139);
  fill (255);
  circle (300,111,15);
  circle (314,122,6);
  circle (243,109,15);
  circle (229,120,6);
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  println(mouseX + " : " + pmouseY);
  ;}
