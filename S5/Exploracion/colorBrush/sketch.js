var c;

function setup() {
  createCanvas(640,480);
  background(102);
  c = color(50, 55, 100); 
}

function draw() {
  variableEllipse(mouseX, mouseY, pmouseX, pmouseY);
  fill(c);
  stroke(c);
}

function variableEllipse(x, y, px, py){
  var speed = abs(x-px) + abs(y-py);
  strokeWeight(speed);
  line(x,y,pmouseX,pmouseY);
  
}