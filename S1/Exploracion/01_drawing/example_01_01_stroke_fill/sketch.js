// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

// Example 1-1: stroke and fill
var cnv, x, y;
x = 0;

function setup() {
  cnv = createCanvas(300, 300);
  var y = (windowHeight - height) / 2;

  background(255, 0, 200);
  stroke(0);
  fill(150);
}

function draw() {
  background(123);

  cnv.position(x, 200)
  fill(255, 0, 0)
  rect(x*2, 50, 75, 100);

  x++;
  console.log(x)

}