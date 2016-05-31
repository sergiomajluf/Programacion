// Example 2-10: objects

var ages = { kate: 320, max:489, kai: 155 };

function setup() {
  createCanvas(600, 400);
}

function draw() {
  background(0);
  rect(width/4, 0, 30, ages.kate);
  rect(2*width/4, 0, 30, ages.max);
  rect(3*width/4, 0, 30, ages.kai);
}