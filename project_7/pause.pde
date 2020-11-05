void pause() {
  pause.play();
  theme.pause();
  background(#DCF7F3);
  textFont(heaters);
  textSize(300);
  fill(#CFF09E);
  text("Pause" , 403, 403);
  textFont(heaters);
  textSize(300);
  fill(#0B486B);
  text("Pause" , 400, 400);
  
  textFont(CreamCake);
  textSize(45);
  fill(#A2E0E5);
  text("<CLICK TO RESTART>" , 400, 650);
  
}

void pauseClicks() {
  if (mouseX > 0 && mouseX < 800 && mouseY > 0 && mouseY < 800){
    mode = GAME;
    theme.play();
  }
}

void mouseReleased() {
 if (mode == INTRO) {
    introClicks();
  } else if (mode == GAME) {
    gameClicks();
  } else if (mode == PAUSE) {
    pauseClicks();
  } else if ( mode == GAMEOVERWIN) {
    gameoverwinClicks();
  } else if (mode == GAMEOVERLOSE) {
    gameoverloseClicks();
  }

}
