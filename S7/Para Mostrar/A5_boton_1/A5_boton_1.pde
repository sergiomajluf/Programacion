int pX = 100;
int pY = 100;
int sX = 100;
int sY = 100;
boolean click = false;

void setup(){
  size(250,250);
}

void draw(){
  rect(pX,pY,sX,sY);
  
  if(mouseX > pX && mouseX < pX + sX && mouseY > pY && mouseY < pY + sY){
    if(mousePressed){
     click = true;
    } else {
      click = false;
    }
  }
  
  if(click == true){
    fill(0);
  } else {
    fill(255);
  }
  println(mouseX);
}