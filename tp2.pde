//Lamas Ernestina
//Comisión 1
PImage fondo, imagen1, imagen2, imagen3;
PFont fuente;
int pantalla, tiempo, diametro;

void setup() {
  size(640, 480);
  fondo = loadImage("gossip-girl-theme-ij8.jpg");
  fuente = createFont("Garet-Book.otf", 48);
  textFont(fuente);
  textSize(18);
  textAlign(LEFT, TOP);
  imagen1 = loadImage("New york city.jpg");
  imagen3 = loadImage("descargar.jpg");
  tiempo = 0;
  pantalla = 0;
  diametro = width/8;
}

void draw() {
  background(0);
  if (pantalla == 0) {
    if (mouseX <= 255) {
      tint(mouseX);
    }
    image(fondo, 0, 0, width, height);
    push();
    text(" Bienvenidos a", 190, height/4 + 10);
    pop();
  }
  if (pantalla == 1) {
    image(imagen1, mouseX, 0, width, height);
    fill(217, 198, 138 );
    textSize(16);
    text("Gossip Girl es una serie para adolescentes transcurrida en New York \n  Trata sobre un sitio web de los chismes de la élite de Manhattan. Una joven, de identidad desconocida y apodada 'Gossip girl', \n  narra en su blog las vivencias de estas dos vecinas del barrio Upper East Side de Nueva York, \n así como de sus amigos Dan y Jenny, \n que a pesar de no pertenecer a los mismos\n  círculos sociales, \n comparten amistad y confidencias con Serena y Blair.",4, mouseY);

 
        
  }
  if (pantalla == 2) {
    image(imagen3, 0, 0, width, height);
    push();
    fill(255, mouseY);
    text("XOXO",216, 124);
    fill(153, 23, 23);
    text("-Gossip girl", 200, mouseY);
    pop();

    push();
    fill(153, 23, 23);
    circle(455,413,diametro);
    textSize(12);
    textAlign(CENTER, CENTER);

    fill(255, 131, 116);
    text("Reiniciar", 455,413,diametro);
    pop();
  }
  tiempo++;
  if (tiempo >= 255) {
    tiempo = 0;
    if (pantalla != 2) {
      pantalla++;
    }
  }
}
void mouseClicked() {
  //pantalla++;
  if (pantalla > 2) {
    pantalla = 0;
  }
  
  if (dist(mouseX, mouseY, 455, 413) < diametro/2) {
    pantalla = 0;
    tiempo = 0;
  }
 
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  println(mouseX + " : " + pmouseY);
   }
