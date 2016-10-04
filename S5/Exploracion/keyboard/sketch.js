var rectWidth;

function setup() {
  createCanvas(640, 360);
  noStroke();
  background(0);
  rectWidth = width / 4;
  
}

function draw() {


}

function keyPressed() {
  var keyIndex = -1;
  if (key >= 'A' && key <= 'Z') {
    keyIndex = key.charCodeAt();

  } else if (key >= 'a' && key <= 'z') {
    keyIndex = key.charCodeAt();
  }
  if (keyIndex === null) {
    // If it's not a letter key, clear the screen
    background(0);
  } else {
    // It's a letter key, fill a rectangle
    fill(millis() % 255, millis() % 255, millis() % 255);
    var x = map(keyIndex, 65, 90, 0, width - rectWidth);
    rect(x, 0, rectWidth, height);
  }
  
  console.log(keyIndex);
  
}