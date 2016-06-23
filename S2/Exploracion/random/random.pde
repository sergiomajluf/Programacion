void setup() {
  size(400,400);
  background(255);
}

void draw() {
 
  
  strokeWeight(random(0,5));
  
  fill(random(0,254), random(0,254), random(0,254), 120 );
  stroke(random(254), random(254), random(254));
  //line(random(0, width), random(0, width), random(0, height),random(0, height));
  ellipse(random(0, width), random(0, width), 40,40);
  
  noStroke();
  fill(120);
  rect(0,200, 400, 20);
  
  println(frameRate);
  
}