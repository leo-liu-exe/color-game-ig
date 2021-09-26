void game() {

  //visuals

  background(0, 255, 255);
  noStroke();
  fill(50,50,50);
  rect(0, 0, 400, 800);
  fill(255,0,255);
  rect(400, 0, 400, 800);
  fill(0);
  //pause

  fill(255, 255, 0);
  fill(0);
  text("TRUE", 200, 200);
  text("False", 600, 200);
  fill(colors[c]);
 text(word[w],400,200);
 textSize(100);

  //display target
  fill(0);
  textSize(32);
  noStroke();
  text("score: " +score, width/2, 50);
  timer = timer - 1;
  if (timer == 0) {
    mode = gameover; 

    //random 50,50
  }
  fill(255);
  stroke(0);
  strokeWeight(5);
}

void gameClicks(){
  if(mouseX<width/2){
   //match
   if(w==c){
     cf = int(random(2,4));     
     timer = 120;
     score = score +1;
     if(cf>=3){
      w = int(random(0,6));
      c = w;
     }else{
      w = int(random(0,6));
      c = int(random(0,6));
     }  
   }else{
    mode = gameover;
   }
   //nomatch
  }else{
    if(w==c){
      mode = gameover;
    }else{
     cf = int(random(2,4));
     timer = 120;
     score = score +1;
     if(cf>=3){
      w = int(random(0,6));
      c = w;
     }else{
      w = int(random(0,6));
      c = int(random(0,6));
     }  
  
  }
}
}
