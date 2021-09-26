


void intro() {


  background(c, 255, 255);
  int i = 7;
  println(f);
  image(gif[f], 0, 0, width, height);
  if (frameCount % 2 == 0) f = f + 1;
  if (f >= 51) f = 0;

  fill(255, 255, 0);

  rect(300, 500, 200, 90);

  strokeWeight(1);
  fill(0, 255, 255);
  textSize(72);
  text("color game", 400, 300);

  text("start", 400, 530);




  if (mouseX>300&&mouseX<500&&mouseY>500&&mouseY<590) {
    fill(100);
    rect(300, 500, 200, 90);
    fill(255);
    text("start", 400, 530);
  } else {
    strokeWeight(1);
    fill(255);
    rect(300, 500, 200, 90);
    fill(0);
    text("start", 400, 530);
  }
}

void introClicks() {

  if (mouseX>300&&mouseX<500&&mouseY>500&&mouseY<590) {
    mode = game;
    reset();
  }
}
