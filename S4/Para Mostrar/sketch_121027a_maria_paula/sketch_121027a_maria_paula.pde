PImage img;
float hueValue, brightnessValue, saturationValue;
float hueIncrement, saturationIncrement;
float hueNew, saturationNew;

boolean original;

void setup() {
  size(640, 400);
  img = loadImage("http://itp.nyu.edu/~msd403/ICM/week6/Lotus.jpg");
  loadPixels();

  noStroke();
  smooth();
  colorMode(HSB);
}


void draw() {
  for (int x = 0; x < img.width; x++) {
    for (int y = 0; y < img.height; y++ ) {
      color pix = img.get(x, y);   

      if (!original) {
        hueValue = hue(pix);
        brightnessValue = brightness(pix);
        saturationValue = saturation(pix);


        hueIncrement = map(mouseX+width/2, 0, width, 0, 360);
        hueNew = hueValue + hueIncrement;
        if (hueNew > 360) hueNew = hueNew-360;

        saturationIncrement = map(mouseY, 0, height, 0, 4);
        saturationNew = saturationValue*saturationIncrement;

        pixels[y*width+x] = color(hueNew, saturationNew, brightnessValue);
      }
      else {
        pixels[y*width+x] = pix;
      }
    }
  }

  updatePixels();
}

void mousePressed() {
  if (original) {
    original = false;
  }
  else {
    original = true;
  }
}


void keyPressed(){

 if(key == '1')  img = loadImage("http://itp.nyu.edu/~msd403/ICM/week6/Lotus.jpg"); loadPixels();
 if(key == '2')  img = loadImage("http://itp.nyu.edu/~msd403/ICM/week6/Frog.jpg"); loadPixels();
 if(key == '3')  img = loadImage("http://itp.nyu.edu/~msd403/ICM/week6/Elephant.jpg"); loadPixels();
 if(key == '4')  img = loadImage("http://itp.nyu.edu/~msd403/ICM/week6/Lion.jpg"); loadPixels();
 if(key == '5')  img = loadImage("http://itp.nyu.edu/~msd403/ICM/week6/Beach.jpg"); loadPixels();

}

