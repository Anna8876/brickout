void gameoverwin () {
  gameover. play();
  theme. pause();
  
  //background
  image(gif[f], 0, 0, width, height);
  f++;
  if (f == numberOFframes) f = 0;
  
  //text
  textFont(lemonYellow);
  textSize(150);
  fill(100);
  text("you win!" , 408, 408);
  fill(#FFFCDD);
  text("you win!" , 400, 400);
  
 
  textFont(CreamCake);
  textSize(40);
  fill(#A2E0E5);
  text("<CLICK TO RESTART>", 400, 600);
  
}

void gameoverwinClicks() {
  if (mouseX > 0 && mouseX < 800 && mouseY > 0 && mouseY < 800){
    mode = INTRO;
  }
}
