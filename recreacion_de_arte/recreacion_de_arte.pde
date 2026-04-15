PImage img;

void setup() {
  size(800, 400);
  img = loadImage("nene tocando instrumento.jpg");
}

void draw() {
  background(30);
 
  // Imagen original (lado izquierdo)
  image(img, 0, 0, 400, 400);

  // Recreación:
  rectMode(CENTER);
 
  // ALAS
  // ala derecha
  strokeWeight(4);
  
  fill(138, 111, 50); 
  beginShape();
  vertex(621, 122);
  vertex(662, 66);
  vertex(709, 29);
  vertex(741, 17);
  vertex(740, 29);
  vertex(718, 54);
  vertex(722, 64);
  vertex(718, 73);
  vertex(695, 89);
  vertex(693, 99);
  vertex(713, 91);
  vertex(714, 103);
  vertex(702, 121);
  vertex(715, 120);
  vertex(709, 130);
  vertex(703, 141);
  vertex(704, 155);
  vertex(700, 158);
  vertex(706, 162);
  vertex(704, 169);
  vertex(691, 182);
  vertex(698, 182);
  vertex(690, 190);
  vertex(700, 205);
  vertex(640, 232);
  vertex(621, 122);
  endShape();
  
  fill(192, 109, 46);
  beginShape();
  vertex(621, 123);
  vertex(642, 104);
  vertex(663, 94);
  vertex(664, 102);
  vertex(658, 108);
  vertex(664, 111);
  vertex(660, 120);
  vertex(651, 133);
  vertex(673, 135);
  vertex(665, 147);
  vertex(673, 149);
  vertex(668, 160);
  vertex(675, 161);
  vertex(670, 171);
  vertex(644, 181);
  vertex(660, 188);
  vertex(656, 199);
  vertex(689, 208);
  vertex(626, 235);
  vertex(621, 123);
  endShape();
    
  
  stroke(172, 82, 39);
  line(625, 118, 644, 105);
  line(644, 105, 663, 95);
  line(663, 95, 664, 103);
  line(664, 103, 659, 108);
  line(655, 114, 666, 108);
  line(666, 115, 651, 134);
  line(651, 134, 674, 135);
  line(674, 135, 671, 143);
  line(671, 143, 663, 148);
  line(655, 148, 675, 150);  
  line(675, 150, 668, 161);
  line(653, 168, 667, 161);
  line(667, 161, 678, 160);
  line(678, 160, 674, 166);
  line(674, 166, 669, 172);
  line(669, 172, 644, 183);
  line(633, 185, 650, 185);
  line(650, 185, 661, 188);
  line(661, 188, 656, 200);
  line(656, 200, 645, 208);
  line(657, 200, 688, 208);
  line(665, 109, 665, 115);
  
  stroke(111, 80, 28);
  line(624, 120, 663, 64);
  line(663, 64, 707, 30);
  line(707, 30, 743, 16);
  line(743, 16, 740, 24);
  line(740, 24, 719, 34);
  line(719, 34, 697, 49);
  line(744, 25, 731, 42);
  line(731, 42, 716, 56);
  line(716, 56, 724, 55);
  line(723, 56, 716, 64);
  line(717, 64, 724, 64);
  line(724, 64, 717, 74);
  line(717, 74, 695, 90);
  line(695, 90, 692, 100);
  line(677, 111, 693, 100);
  line(693, 100, 705, 93);
  line(705, 93, 715, 92);
  line(715, 92, 713, 101);
  line(715, 102, 698, 104);
  line(699, 103, 688, 112);
  line(688, 112, 674, 121);
  line(716, 102, 703, 119);
  line(704, 121, 715, 120);
  line(716, 121, 710, 132);
  line(683, 138, 693, 132);
  line(693, 132, 700, 130);
  line(700, 130, 710, 135);
  line(710, 135, 704, 142);
  line(683, 148, 691, 144);
  line(691, 144, 697, 144);
  line(697, 144, 706, 145);
  line(706, 145, 706, 155);
  line(706, 155, 700, 158);
  line(682, 159, 700, 159);
  line(700, 159, 707, 162);
  line(707, 162, 705, 169);
  line(705, 170, 693, 179);
  line(693, 179, 664, 184);
  line(682, 180, 699, 181);
  line(703, 179, 691, 190);
  line(692, 190, 663, 193);
  line(691, 191, 696, 198);    
  endShape();

// ala izquierda

  fill(190, 145, 63);
  beginShape();
  vertex(497, 104);
  vertex(474, 79);
  vertex(439, 54);
  vertex(401, 39);
  vertex(404, 52);
  vertex(418, 62);
  vertex(416, 69);
  vertex(447, 95);
  vertex(430, 91);
  vertex(431, 108);
  vertex(445, 120);
  vertex(442, 128);
  vertex(446, 134);
  vertex(440, 140);
  vertex(446, 148);
  vertex(444, 153);
  vertex(450, 158);
  vertex(447, 166);
  vertex(460, 176);
  vertex(450, 183);
  vertex(486, 174);
  vertex(497, 104);
  endShape();
  
  fill(192, 109, 46);
  beginShape();  
  vertex(493, 104);
  vertex(477, 95);
  vertex(464, 97);
  vertex(469, 103);
  vertex(464, 104);
  vertex(472, 120);
  vertex(466, 122);
  vertex(479, 133);
  vertex(493, 104);
  endShape();
  
  stroke(172, 82, 39);
  line(492, 103, 477, 95);
  line(477, 95, 464, 96);
  line(464, 96, 474, 107);
  line(474, 107, 494, 117);
  line(471, 104, 464, 105);
  line(464, 105, 473, 121);
  line(473, 121, 482, 126);
  line(471, 120, 465, 123);
  line(465, 123, 479, 132);

  stroke(111, 80, 28);
  line(506, 118, 488, 91);
  line(488, 91, 464, 71);
  line(464, 71, 440, 55);
  line(440, 55, 399, 38);
  line(399, 38, 405, 51);
  line(405, 51, 417, 61);
  line(417, 61, 432, 71);
  line(417, 62, 416, 69);
  line(416, 69, 431, 82);
  line(431, 82, 447, 95);
  line(447, 95, 428, 89);
  line(428, 89, 430, 107);
  line(430, 107, 444, 120);
  line(445, 122, 441, 129);
  line(445, 120, 455, 121);
  line(470, 139, 454, 132);
  line(454, 132, 440, 141);
  line(440, 141, 445, 147);
  line(442, 129, 446, 135);
  line(462, 144, 449, 146);
  line(449, 146, 443, 153);
  line(443, 153, 450, 159);
  line(467, 154, 453, 157);
  line(453, 157, 446, 167);
  line(446, 167, 459, 176);
  line(449, 185, 483, 163);

   
  // CARA
  stroke(232, 183, 85);
  fill(232, 183, 85);
  strokeWeight(3);
  beginShape();
  vertex(631, 167);
  vertex(633, 194);
  vertex(644, 200);
  vertex(644, 254);
  vertex(546,247);
  vertex(548, 199);
  endShape();
  
  // OJOS
  stroke(0); 
  triangle(625, 200, 631, 193, 628, 204); // su ojo izquierdo
  beginShape();
  vertex(607,219);
  vertex(605, 229);
  vertex(588, 232);
  vertex(594, 226);
  vertex(606,219);
  endShape();
  fill(1);
  ellipse(604, 225, 8, 10);
  line(631, 194, 631, 203);
  
  // NARIZ
  noFill();
  beginShape();
  vertex(633,221);
  vertex(632, 227);
  vertex(625, 230);
  vertex(622, 229);
  endShape();
  
  
  // BRAZO DE LA DERECHA
  noStroke();
  fill(89, 68, 41);
  triangle(645,212, 662,217, 648,233);
  beginShape();
  vertex(666,330);
  vertex(702, 339);
  vertex(682, 255);
  vertex(622,286);
  endShape();
  
  fill(232, 183, 85);
  beginShape();
  vertex(702, 339);
  vertex(725, 309);
  vertex(733, 224);
  vertex(703, 248);
  vertex(690, 287);
  vertex(686, 307);
  vertex(702, 339);
  endShape();
  
  // BRAZO DE LA IZQUIERDA
  beginShape();
  vertex(477, 178);
  vertex(444, 187);
  vertex(423, 199);
  vertex(428, 233);
  vertex(440, 244);
  vertex(551, 238);
  vertex(541, 192);
  endShape();
  
  // INSTRUMENTO
  noStroke();
  fill(205, 151, 55);
  rect(450, 360, 100, 90);
  ellipse(520, 320, 240, 200);
  beginShape();
  vertex(605, 250); // esquina izquierda arriba
  vertex(631, 296); // esquina izquierda abajo
  vertex(790, 190); // esquina derecha abajo
  vertex(770, 155); // esquina derecha arriba
  endShape();

  
  fill(205, 151, 55);
  stroke(1);
  strokeWeight(2);
  beginShape();
  vertex(457, 331); // esquina derecha arriba
  vertex(487, 380); // esquina derecha abajo
  vertex(479, 388); // esquina izquierda abajo
  vertex(446, 335); // esquina izquierda arriba
  vertex(457, 331); // vuelve al inicio
  endShape();
  fill(106, 77, 23);
  ellipse(550, 310, 60, 60);
  stroke(0);
 
  // cuerdas
  line(454, 339, 769, 157); // primera
  line(457, 344, 771, 161); // segunda
  line(460, 349, 773, 165); // tercera
  line(462, 353, 775, 168); // cuarta
  line(465, 357, 777, 171); // quinta
  line(468, 362, 779, 175); // sexta
  line(471, 366, 781, 179); // septima
  line(473, 371, 783, 182); // octava
  line(478, 376, 785, 186); // novena
  line(479, 380, 787, 189); // decima
  
  noStroke();
  fill(70, 29, 8);
  beginShape();
  vertex(789, 192);
  vertex(766, 157);
  vertex(800, 126);
  vertex(800, 185);
  endShape();
  
  // MANO SUPERPUESTA DEL LADO DERECHO
  stroke(232, 183, 85);
  strokeWeight(6);
  line(728, 234, 727, 220);
  line(727, 220, 718, 210);
  line(733, 234, 737, 217);
  line(737, 217, 728, 200);
  line(737, 233, 745, 216);
  line(745, 216, 734, 198);
  line(738, 232, 753, 223);
  line(753, 223, 749, 203);
  line(728, 237, 746, 228);
  
  // BRAZO SUPERPUESTO DEL LADO IZQUIERDO
  fill(232, 183, 85);
  beginShape();
  vertex(442, 243);
  vertex(467, 267);
  vertex(515, 284);
  vertex(515, 301);
  vertex(552, 293);
  vertex(536, 269);
  vertex(477, 215);
  endShape();
  
  // MANO SUPERPUESTA DEL LADO IZQUIERDO
  line(552, 293, 561, 318); 
  line(549, 296, 559, 319);
  line(539, 299, 551, 332);
  line(542, 298, 553, 331);
  line(527, 300, 536, 334);
  line(531, 300, 538, 333);
  line(519, 302, 525, 325);
  line(516, 303, 524, 325);
  ellipse(533, 294, 38, 20);
  
  // PELO
  noStroke();
  fill(82, 56, 33);
  ellipse(552, 151, 161, 137);
  
   // RULOS
  noFill();
  stroke(168, 113, 34);
  ellipse(518, 104, 30, 27);
  ellipse(532, 86, 14, 13);
  ellipse(551, 87, 21, 21);
  ellipse(569, 90, 12, 19);
  ellipse(585, 92, 14, 15);
  ellipse(596, 105, 27, 30);
  ellipse(608, 106, 13, 9);
  ellipse(613, 119, 18, 15);
  ellipse(617, 133, 28, 20);
  ellipse(630, 143, 10, 12);
  ellipse(623, 161, 21, 25);
  ellipse(615, 174, 26, 28);
  ellipse(601, 190, 25, 30);
  ellipse(576, 208, 26, 23);
  ellipse(562, 213, 15, 13);
  ellipse(543, 212, 26, 18);
  ellipse(526, 214, 9, 10);
  ellipse(516, 206, 15, 21);
  ellipse(504, 204, 9, 9);
  ellipse(495, 186, 18, 22);
  ellipse(482, 171, 22, 18);
  ellipse(482, 147, 21, 23);
  ellipse(485, 120, 24, 26);
  ellipse(535, 110, 35, 31);
  ellipse(506, 126, 30, 27);
  ellipse(521, 159, 29, 28);
  ellipse(504, 156, 17, 21);
  ellipse(515, 187, 14, 14);
  ellipse(551, 137, 29, 26);
  ellipse(573, 133, 32, 36);
  ellipse(592, 143, 21, 21);
  ellipse(596, 161, 21, 19);
  ellipse(573, 160, 9, 7);
  ellipse(580, 174, 20, 18);
  ellipse(551, 159, 23, 14);
  ellipse(554, 182, 30, 28);
  ellipse(533, 177, 21, 11);
  ellipse(534, 194, 16, 13);

}
