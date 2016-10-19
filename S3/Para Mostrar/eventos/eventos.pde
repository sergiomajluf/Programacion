/*
EVENTOS:
 Todo cambio que permite modificar la conducta normal del programa
 
 */

float miR = 255;
float miG = 255;
float miB = 255;

void setup() {
  size(520, 300);
}

void draw() {
  background(miR, miG, miB);
  rect(mouseX, 100, 200,100);
}


void mousePressed(){
  fill(random(255), random(255), random(255));
}

void keyPressed(){
  miR = 255;
  miG = random(255);
  miB = random(255);
  miDibujo();
}

void miDibujo(){
  ellipse(mouseX, mouseY, 100,100);
  ellipse(mouseX/2, mouseY*2, 200,50);
  
}