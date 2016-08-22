int [] x = {100, 150, 200, 250};
int [] y = {100, 300, 150, 100};

int contador = 0;

void setup() {
  size(400, 400);
  frameRate(5);
}

void draw() {
  background(255);

  for (int i = 0; i < x.length; i++) {
    ellipse(x[contador], y[contador], 20, 20);
  }

  //if (contador < 3) {
  //  contador++;
  //} else {
  //  contador =0 ;
  //}
}


void mousePressed() {
  contador++;
}

void keyPressed() {
  contador--;
}