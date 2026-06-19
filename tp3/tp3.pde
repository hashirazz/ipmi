//https://www.youtube.com/watch?v=X9nJElny3t4
//Fiorella Brangeri

PImage obra;
boolean coloresInvertidos = false;
float grilla2X = 0;
float grilla2Y = 0;
float posX = 0;
float posY = 0;
color colorRandom1 = color(1, 104, 136);
color colorRandom2 = color(30, 201, 130);

void setup() {
  size(800, 400);
  background(255);
  rectMode(CENTER);
  obra = loadImage("obra original.jpeg");
  obra.resize(400, 400);
}

void draw() {
  background(255);
  image(obra, 0, 0);
  noStroke();
  
  float paso2 = 400.0 / 27; //tam del cuadrado grilla 1
  
  
  float areaSize = 315 - 80;
  float tamCuad = 14;
  float cantCuad = 15;
  float paso1 = areaSize / tamCuad;
  float totalSize = paso1 * cantCuad;  //tam cuadrados grilla 2
  
 
  float desplazX = 400 + (400 - totalSize) / 2 + grilla2X;
  float desplazY = (400 - totalSize) / 2 + grilla2Y; //centro la grilla 2
  
  dibujarGrilla1(paso2);
  dibujarPuntosGrilla1(paso2);
  dibujarGrilla2(paso1, cantCuad, desplazX, desplazY);
  dibujarPuntosGrilla2(paso1, cantCuad, desplazX, desplazY);
  
  grilla2X = posX;
  grilla2Y = posY;
  posX = (mouseX - 600) / 3.0;
  posY = (mouseY - 200) / 3.0; //movimiento de la grilla 2 
                               //con un frame de retraso para poder reiniciar 
  
}

color patronConClick(int indice) {
  int i = indice % 8;
  boolean esBlanco;
  if (i == 0 || i == 1 || i == 3 || i == 6) {
    esBlanco = true;
  } else {
    esBlanco = false;
  }
  if (coloresInvertidos) {
    esBlanco = !esBlanco;
  }
  if (esBlanco) {
    return color(255, 255, 255);
  } else {
    return color(35, 55, 90);
  }
}

void keyPressed() {
  if (key == 'r' || key == 'R') {
    coloresInvertidos = false;
    grilla2X = 0;
    grilla2Y = 0;
    posX = 0;
    posY = 0;
    colorRandom1 = color(1, 104, 136);
    colorRandom2 = color(30, 201, 130);
  }
}

void mousePressed() {
  if (mouseButton == LEFT) {
    coloresInvertidos = !coloresInvertidos;
  }
  if (mouseButton == RIGHT) {
    colorRandom1 = color(random(255), random(255), random(255));
    colorRandom2 = color(random(255), random(255), random(255));
  }
}
