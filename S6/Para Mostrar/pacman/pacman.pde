// Estos valores son para calcular
// la rotacion de un angulo
float angle = 290;
float aVelocity = 5;
float aAcceleration = 0.05;


float x;
float y;
float easing = 0.05;
int contador =0;

void setup() {
  size(640, 360); 
  noStroke();
}

void draw() { 
  background(50);

  float targetX = mouseX;
  float dx = targetX - x;
  x += dx * easing;

  float targetY = mouseY;
  float dy = targetY - y;
  y += dy * easing;

  //ellipse(x, y, 66, 66);

  // el angulo que calculamos camibara constantemente
  aVelocity += aAcceleration;
  angle += aVelocity;
  println(angle);
  
  // ahora restringimos el rango de cambio del angulo
  // esto lo hice al ojo para lograr la forma pacman
  if (angle > 349) aVelocity = -5;
  if (angle < 290) aVelocity = 5;
  
  // finalmente dibujamos el arco, con un valor que ya sabemos
  // cambia todo el tiempo, hacia arriba y hacia abajo
  arc(x, y, 80, 80, 0.3, radians(angle), PIE);


}