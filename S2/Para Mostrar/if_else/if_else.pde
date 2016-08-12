int b = 2;
boolean a = false;


if (b == 3) {
  println("condicion B es verdadera");
  fill(255, 0, 0);
  rect(30, 20, 50, 50);
} else if (b < 5) {
  println("condicion A es verdadera");
  fill(255);
  rect(40, 30, 30, 30);
} else {
  println("ninguna de las anteriores");
  fill(0, 0, 255);
  ellipse(50, 50, 50, 50);
}

println(b);