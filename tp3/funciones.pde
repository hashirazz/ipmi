void dibujarGrilla1(float paso2) {
  for (int fila = 0; fila < 28; fila++) {
    for (int col = 0; col < 28; col++) {
      if ((fila + col) % 2 == 0) {
        fill(colorRandom1);
      } else {
        fill(colorRandom2);
}
      pushMatrix();
      translate(400 + col * paso2, fila * paso2);
      rect(0, 0, paso2, paso2);
      popMatrix();
    } // esto pone todos los cuadrados especificamente, cambiando el eje al centro de cada uno
  }
}

void dibujarPuntosGrilla1(float paso2) {
  float radio = paso2 * 0.18;
  for (int fila = 0; fila < 27; fila++) {
    for (int col = 0; col < 27; col++) {
      fill(patronConClick(col + fila));
      noStroke();
      float x = 400 + col * paso2 + paso2/2;
      float y = fila * paso2 + paso2/2;
      ellipse(x, y, radio * 2, radio * 2);
    }
  }
}

void dibujarGrilla2(float paso1, float cantCuad, float desplazX, float desplazY) {
  for (int fila = 0; fila < cantCuad; fila++) {
    for (int col = 0; col < cantCuad; col++) {
      if ((fila + col) % 2 == 0) {
        fill(1, 104, 136);
      } else {
        fill(30, 201, 130);
      }
      float cx = desplazX + col * paso1 + paso1/2;
      float cy = desplazY + fila * paso1 + paso1/2; //calcula el centro del cuad
      
      float d = dist(mouseX, mouseY, cx, cy);
      float angulo = map(d, 0, 200, 0.6, 0);
      
      pushMatrix();
      translate(cx, cy);
      rotate(angulo);
      rect(0, 0, paso1, paso1);
      popMatrix();
    }
  }
}

void dibujarPuntosGrilla2(float paso1, float cantCuad, float desplazX, float desplazY) {
  float radio2 = paso1 * 0.18;
  for (int fila = 0; fila < cantCuad + 1; fila++) {
    for (int col = 0; col < cantCuad + 1; col++) {
      fill(patronConClick(col + fila));
      noStroke();
      float x = desplazX + col * paso1;
      float y = desplazY + fila * paso1;
      ellipse(x, y, radio2 * 2, radio2 * 2);
    }
  }
}
