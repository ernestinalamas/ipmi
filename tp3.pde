//Ernestina Lamas
//Comisión 1
PImage obra;
int columnas = 14; 
int filas = 14;    
int tamaño;        
float opacidadMaxima = 255; 
void setup() {
  size(800, 400); 
  obra = loadImage("obratp3.png"); 
  
 }

void draw() {
  background(255); 
  tamaño = width / 2 / columnas; 
  
  for (int i = 0; i < columnas; i++) { 
    for (int j = 0; j < filas; j++) { 
      float x = (i * tamaño) + (width / 2) + tamaño / 2; 
      float y = j * tamaño + tamaño / 2; 
      float size;
      if (i == 0) { 
        size = map(j, 0, filas - 1, tamaño * 0.1, tamaño * 0.9);
      } else if (j == 0) { 
        size = map(i, 0, columnas - 1, tamaño * 0.1, tamaño * 0.9);
      } else if (i == columnas - 1) { 
        size = map(j, 0, filas - 1, tamaño * 0.9, tamaño * 0.1);
      } else if (j == filas - 1) { 
        size = map(i, 0, columnas - 1, tamaño * 0.1, tamaño * 0.9);
      } else {
        float d1 = min(i, columnas - 1 - i);
        float d2 = min(j, filas - 1 - j);
        size = map(min(d1, d2), 0, min(columnas / 2, filas / 2), tamaño * 0.1, tamaño * 0.9);
      }
      
      float distancia = dist(mouseX, mouseY, x, y);
      float opacidad = map(distancia, 0, width / 2, opacidadMaxima, 50);
      
   
      fill(0, opacidad);
      noStroke(); 
      ellipse(x, y, size, size); 
    }
  }

 
  image(obra, 0, 0, width / 2, height);
}

void keyPressed() {
  if (key == '+') { 
    columnas++;
    redraw(); 
  } else if (key == '-') { 
    columnas = max(1, columnas - 1);
    redraw(); 
  }
}


void mousePressed() {
  if (mouseButton == LEFT) { 
    opacidadMaxima += 10;
  } else if (mouseButton == RIGHT) { 
    opacidadMaxima = max(0, opacidadMaxima - 10);
  }
}
