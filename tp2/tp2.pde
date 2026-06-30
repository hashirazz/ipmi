PImage fondo, portada, start, mudkip, snorlax, espeon, scolipede, marshadow;
PFont fuenteRetro;

float y1, y2; // posicion vertical de las dos imageness
float vel = 1; // velocidad del fondo
int pantalla = 0;

float mudkipY;
float cuadroIzqX;
float cuadroDerX;
int demora;
boolean enPausa;

float snorlaxY;
float cuadroIzqX2;
float cuadroDerX2;
int demora2;
boolean enPausa2;

float espeonY;
float cuadroIzqX3;
float cuadroDerX3;
int demora3;
boolean enPausa3;

float scolipedeY;
float cuadroIzqX4;
float cuadroDerX4;
int demora4;
boolean enPausa4;

float marshadowY;
float cuadroIzqX5;
float cuadroDerX5;
int demora5;
boolean enPausa5;

float tam = 200;
boolean creciendo = true;

void setup() {
  size(640, 480);
  fuenteRetro = loadFont("MiriamLibre-Bold-28.vlw");
  textFont(fuenteRetro);
  
  fondo = loadImage("pokebolas.jpg");
  fondo.resize(width, height); // como descargué la imagen muy grande la voy a redimensionar
  y1 = 0;  // aca y abajo de esta linea son las posiciones donde inicia cada imagen (una arriba de la otra)
  y2 = -height;

  portada = loadImage("portada_ash.png");
  portada.resize(300, 200);
  start = loadImage("boton_start.png");
  start.resize(200, 70);

  mudkip = loadImage("mudkip.png");
  mudkip.resize(150, 0);

  mudkipY = -150;  // empieza arriba de la pantalla
  cuadroIzqX = -270;  // empieza a la izquierda de la pantalla
  cuadroDerX = 640;  // empieza a la derecha de la pantalla
  demora = 0;
  enPausa = false;

  snorlaxY = -150;
  cuadroIzqX2 = -270;
  cuadroDerX2 = 640;
  demora2 = 0;
  enPausa2 = false;

  snorlax = loadImage("snorlax.png");
  snorlax.resize(150, 0);

  espeon = loadImage("espeon.png");
  espeon.resize(150, 0);
  espeonY = -150;
  cuadroIzqX3 = -270;
  cuadroDerX3 = 640;
  demora3 = 0;
  enPausa3 = false;

  scolipede = loadImage("scolipede.png");
  scolipede.resize(150, 0);
  scolipedeY = -150;
  cuadroIzqX4 = -270;
  cuadroDerX4 = 640;
  demora4 = 0;
  enPausa4 = false;

  marshadow = loadImage("marshadow.png");
  marshadow.resize(100, 0);
  marshadowY = -150;
  cuadroIzqX5 = -270;
  cuadroDerX5 = 640;
  demora5 = 0;
  enPausa5 = false;
}

void draw() {

  dibujarFondo();

  if (pantalla == 0) pantallaPlay();
  if (pantalla == 1) pantallaMudkip();
  if (pantalla == 2) pantallaSnorlax();
  if (pantalla == 3) pantallaEspeon();
  if (pantalla == 4) pantallaScolipede();
  if (pantalla == 5) pantallaMarshadow();
  if (pantalla == 6) pantallaReset();
}


void mousePressed() {
  if (pantalla == 0) { //funciona el boton start
    if (mouseX > 190 && mouseX < 390 && mouseY > 310 && mouseY < 380) {
      pantalla = 1;
    }
  }
  if (pantalla == 6) { //funciona el boton reset
    if (mouseX > width/2 - 110 && mouseX < width/2 + 110 && mouseY > 200 && mouseY < 270) {
      pantalla = 0;
    }
  }
}
