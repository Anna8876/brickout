void gameoverlose(){
  gameover. play();
  theme. pause();
  
  //bakcground
  image(gif[f], 0, 0, width, height);
  f++;
  if (f == numberOFframes) f = 0;
  
  //text
  textFont(lemonYellow);
  textSize(150);
  fill(100);
  text("you lose!" , 408, 408);
  fill(#FFFCDD);
  text("you lose!" , 400, 400);
  
  textFont(CreamCake);
  textSize(40);
  fill(#A2E0E5);
  text("<CLICK TO RESTART>", 400, 600);
  
}

void gameoverloseClicks() {
  if (mouseX > 0 && mouseX < 800 && mouseY > 0 && mouseY < 800){
    mode = INTRO;
  }
}
