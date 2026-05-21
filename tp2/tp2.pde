PImage fondo, portada, start, mudkip, snorlax, espeon, scolipede, marshadow;

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
  fondo = loadImage("pokebolas.jpg");
  fondo.resize(width, height); // como descargué la imagen muy grande la voy a redimensionar
  y1 = 0;  // aca y abajo de esta linea son las posiciones donde inicia cada imagen (una arriba de la otra)
  y2 = -height;
  
  portada = loadImage("portada_ash.png");
  portada.resize(300,200);
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
  
  //FONDOO
  y1 += vel; // avanzan
  y2 += vel;

  if (y1 >= height) y1 = y2 - height; //cuando una sale debajo de la pantalla, se pone arriba de la anterior 
  if (y2 >= height) y2 = y1 - height;

  image(fondo, 0, y1);
  image(fondo, 0, y2);
  
  //PANTALLA 0 play
  if (pantalla == 0 ) {
    image(portada, 170, 140);
    image(start, 190, 310);
   }
  
  //PANTALLA 1
  if (pantalla == 1) {
  if (enPausa == false) {
    // entran todos a la vez
    if (mudkipY < 20) mudkipY += 4; // este entra cada 4 pixeles
    if (cuadroIzqX < 30) cuadroIzqX += 5; // este de a 5
    if (cuadroDerX > 340) cuadroDerX -= 5; // este de a 5

    // cuando todos llegaron a su lugar, empieza la pausa
    if (mudkipY >= 20 && cuadroIzqX >= 30 && cuadroDerX <= 340) { // aca uso el and profee :3
      enPausa = true;
      demora = 0;
    }
  } else {      //como cada frame suma 1 a demora, a 60 fps va a tardar 10 segundos en tardar a 600
    demora++;
    
    if (demora > 600) {
      // se van todos
      mudkipY -= 4;
      cuadroIzqX -= 5;
      cuadroDerX += 5;

      // cuando salieron de la pantalla 1 pasa a la siguiente resetando todas las variables
      if (mudkipY < -150 && cuadroIzqX < -270 && cuadroDerX > 640) { 
        pantalla = 2;
        enPausa = false;
        demora = 0;
        mudkipY = -150;
        cuadroIzqX = -270;
        cuadroDerX = 640;
      }
    }
  }

  image(mudkip, width/2 - mudkip.width/2, mudkipY); // aca le resto la mitad del liendo a la mitad de la imagen del poke para que quede bien centrada
  textSize(40);
  fill(77, 201, 245);
  textAlign(LEFT, CENTER); //info del pokemon (su nombre y numero en la pokedex)
  text("Mudkip", 30, 80);
  textAlign(RIGHT, CENTER);
  text("Nº 0258", 610, 80);

  fill(255, 255, 255, 128); // cuadros
  rect(cuadroIzqX, 220, 270, 220);
  rect(cuadroDerX, 220, 270, 220);

  fill(0);
  textSize(16);
  textAlign(LEFT, TOP);
  text("Puede reducir a añicos grandes rocas.\nDescansa enterrado en el lodo del\nlecho de los ríos.\nBatir su gran aleta caudal en el agua\nle permite nadar muy rápido. A pesar\nde su reducido tamaño, tiene mucha\nfuerza.", cuadroIzqX + 10, 230, 250, 210);
  text("Altura: 0,4 m\nCategoría: Pez Lodo\nPeso: 7,5 kg\nHabilidad: Torrente\nTipo: agua\nDebilidad: Planta Eléctrico", cuadroDerX + 10, 230, 250, 210);
}
// PANTALLA 2 //basicamente hace lo mismo para todas las pantallas menos la ultima que es la de reset
  if (pantalla == 2) {
  if (enPausa2 == false) {
    if (snorlaxY < 20) snorlaxY += 4;
    if (cuadroIzqX2 < 30) cuadroIzqX2 += 5;
    if (cuadroDerX2 > 340) cuadroDerX2 -= 5;

    if (snorlaxY >= 20 && cuadroIzqX2 >= 30 && cuadroDerX2 <= 340) {
      enPausa2 = true;
      demora2 = 0;
    }
  } else {
    demora2++;
    if (demora2 > 600) {
      snorlaxY -= 4;
      cuadroIzqX2 -= 5;
      cuadroDerX2 += 5;

      if (snorlaxY < -150 && cuadroIzqX2 < -270 && cuadroDerX2 > 640) {
        pantalla = 3;
        enPausa2 = false;
        demora2 = 0;
        snorlaxY = -150;
        cuadroIzqX2 = -270;
        cuadroDerX2 = 640;
      }
    }
  }

  image(snorlax, width/2 - snorlax.width/2, snorlaxY);
  
  textSize(40);
  fill(51, 63, 67);
  textAlign(LEFT, CENTER);
  text("Snorlax", 30, 80);
  textAlign(RIGHT, CENTER);
  text("Nº 0143", 610, 80);

  fill(255, 255, 255, 128);
  rect(cuadroIzqX2, 220, 270, 220);
  rect(cuadroDerX2, 220, 270, 220);

  fill(0);
  textSize(16);
  textAlign(LEFT, TOP);
  text("Este Pokémon es un glotón que lo único que hace aparte de comer \nes dormir.\nPuede ingerir hasta 400 kg de comida\nen un solo día.\nSus jugos gástricos pueden digerir\ncualquier toxina, lo que le permite\ncomer sin problema todo lo que\nencuentra por el suelo.", cuadroIzqX2 + 10, 230, 250, 210);
  text("Altura: 2,1 m\nCategoría: Dormir\nPeso: 460 kg\nHabilidad: Sebo, Inmunidad\nTipo: Normal\nDebilidad: Pelea", cuadroDerX2 + 10, 230, 250, 210);
}

// pantalla 3
  if (pantalla == 3) {
  if (enPausa3 == false) {
    if (espeonY < 20) espeonY += 4;
    if (cuadroIzqX3 < 30) cuadroIzqX3 += 5;
    if (cuadroDerX3 > 340) cuadroDerX3 -= 5;

    if (espeonY >= 20 && cuadroIzqX3 >= 30 && cuadroDerX3 <= 340) {
      enPausa3 = true;
      demora3 = 0;
    }
  } else {
    demora3++;
    if (demora3 > 600) {
      espeonY -= 4;
      cuadroIzqX3 -= 5;
      cuadroDerX3 += 5;

      if (espeonY < -150 && cuadroIzqX3 < -270 && cuadroDerX3 > 640) {
        pantalla = 4;
        enPausa3 = false;
        demora3 = 0;
        espeonY = -150;
        cuadroIzqX3 = -270;
        cuadroDerX3 = 640;
      }
    }
  }

  image(espeon, width/2 - espeon.width/2, espeonY);
  
  textSize(40);
  fill(198, 134, 222);
  textAlign(LEFT, CENTER);
  text("Espeon", 30, 80);
  textAlign(RIGHT, CENTER);
  text("Nº 0196", 610, 80);

  fill(255, 255, 255, 128);
  rect(cuadroIzqX3, 220, 270, 220);
  rect(cuadroDerX3, 220, 270, 220);

  fill(0);
  textSize(16);
  textAlign(LEFT, TOP);
  text("Al predecir el siguiente movimiento\nde su rival, los extremos de su cola\nbífida tiemblan ligeramente.\nUsa el corto pelaje que cubre su\ncuerpo para sentir el viento y\npredecir las acciones enemigas.", cuadroIzqX3 + 10, 230, 250, 210);
  text("Altura: 0,9 m\nCategoría: Sol\nPeso: 26,5 kg\nHabilidad: Sincronía\nTipo: Psíquico\nDebilidad: Bicho, Fantasma, Siniestro", cuadroDerX3 + 10, 230, 250, 210);
}
// PANTALLA 4
  if (pantalla == 4) {
  if (enPausa4 == false) {
    if (scolipedeY < 20) scolipedeY += 4;
    if (cuadroIzqX4 < 30) cuadroIzqX4 += 5;
    if (cuadroDerX4 > 340) cuadroDerX4 -= 5;

    if (scolipedeY >= 20 && cuadroIzqX4 >= 30 && cuadroDerX4 <= 340) {
      enPausa4 = true;
      demora4 = 0;
    }
  } else {
    demora4++;
    if (demora4 > 600) {
      scolipedeY -= 4;
      cuadroIzqX4 -= 5;
      cuadroDerX4 += 5;

      if (scolipedeY < -150 && cuadroIzqX4 < -270 && cuadroDerX4 > 640) {
        pantalla = 5;
        enPausa4 = false;
        demora4 = 0;
        scolipedeY = -150;
        cuadroIzqX4 = -270;
        cuadroDerX4 = 640;
      }
    }
  }

  image(scolipede, width/2 - scolipede.width/2, scolipedeY);

  textSize(40);
  fill(201, 34, 98);
  textAlign(LEFT, CENTER);
  text("Scolipede", 30, 80);
  textAlign(RIGHT, CENTER);
  text("Nº 0545", 610, 80);
  
  fill(255, 255, 255, 128);
  rect(cuadroIzqX4, 220, 270, 220);
  rect(cuadroDerX4, 220, 270, 220);

  fill(0);
  textSize(16);
  textAlign(LEFT, TOP);
  text("Sujeta a sus presas con las garras\nque le sobresalen del cuello hasta\ninmovilizarlas y luego las remata\ncon veneno.", cuadroIzqX4 + 10, 230, 250, 210);
  text("Altura: 2,5 m\nCategoría: Megaciempiés\nPeso: 200,5 kg\nHabilidad: Enjambre, Punto Tóxico\nTipo: Bicho, Veneno\nDebilidad: Fuego, Volador,\nRoca, Psíquico", cuadroDerX4 + 10, 230, 250, 210);
}
  if (pantalla == 5) {
  if (enPausa5 == false) {
    if (marshadowY < 20) marshadowY += 4;
    if (cuadroIzqX5 < 30) cuadroIzqX5 += 5;
    if (cuadroDerX5 > 340) cuadroDerX5 -= 5;

    if (marshadowY >= 20 && cuadroIzqX5 >= 30 && cuadroDerX5 <= 340) {
      enPausa5 = true;
      demora5 = 0;
    }
  } else {
    demora5++;
    if (demora5 > 600) {
      marshadowY -= 4;
      cuadroIzqX5 -= 5;
      cuadroDerX5 += 5;

      if (marshadowY < -150 && cuadroIzqX5 < -270 && cuadroDerX5 > 640) {
        pantalla = 6;
        enPausa5 = false;
        demora5 = 0;
        marshadowY = -150;
        cuadroIzqX5 = -270;
        cuadroDerX5 = 640;
      }
    }
  }

  image(marshadow, width/2 - marshadow.width/2, marshadowY);

  textSize(40);
  fill(108, 113, 113);
  textAlign(LEFT, CENTER);
  text("Marshadow", 30, 80);
  textAlign(RIGHT, CENTER);
  text("Nº 0802", 610, 80);

  fill(255, 255, 255, 128);
  rect(cuadroIzqX5, 220, 270, 220);
  rect(cuadroDerX5, 220, 270, 220);

  fill(0);
  textSize(16);
  textAlign(LEFT, TOP);
  text("Se oculta en la sombra de su oponente\ny copia sus movimientos y su fuerza.\nSu imitación resulta más poderosa\nque el original.\nSe infiltra en la sombra de las personas\ny los Pokémon. Sintoniza con sus\nsentimientos y copia sus capacidades.", cuadroIzqX5 + 10, 230, 250, 210);
  text("Altura: 0,7 m\nCategoría: Morasombra\nPeso: 22,2 kg\nHabilidad: Experto\nGénero: desconocido\nTipo: Pelea, Fantasma\nDebilidad: Volador, Psíquica,\nFantasma, Hada", cuadroDerX5 + 10, 230, 250, 210);
}
  //pantalla 6 reset
  if (pantalla == 6) {
    if (creciendo == true) {         // aca en cada frame crece 0.2 hasta llegar a 220, ahi se empieza a achicar hasta 200, basicamente respira entre esos dos numeros
      tam += 0.2;
      if (tam >= 220) creciendo = false;
    } else {
      tam -= 0.2;
      if (tam <= 200) creciendo = true;
    }

    boolean sobreMouse = mouseX > width/2 - tam/2 && mouseX < width/2 + tam/2 && mouseY > 200 && mouseY < 270; //aca detecta si el mouse esta arriba como lo hicimos en clase

    if (sobreMouse == true) { //si el mouse esta arriba cambia de color a rojo
      fill(200, 0, 0);
    } else {
      fill(150);
    }

    noStroke();
    rect(width/2 - tam/2, 200, tam, 70, 8);

    if (sobreMouse == true) { //este cambia el color del texto "reset", lo puse en ingles porque combina con el play del inicio profe no es IA
      fill(180, 0, 255);
    } else {
      fill(50);
    }
    textSize(24);
    textAlign(CENTER, CENTER);
    text("RESET", width/2, 235);
  }
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
