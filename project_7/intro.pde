PFont blueEye;
PFont CreamCake;
PFont heaters;
PFont baylandDEMO;
PFont lemonYellow;
String message = "Breakout";
float theta;



void intro () {
  gameover.pause();
  theme.play();
  
  image(gif[f], 0, 0, width, height);
  f++;
  if (f == numberOFframes) f = 0;
 
  
  
 //font
  
  Rtactile(325, 660, 150, 50);
  fill(50);
  stroke(255);
  strokeWeight(3);
  rect(325, 660, 150, 50, 20);
  textFont(CreamCake);
  textSize(45);
  fill(#A2E0E5);
  text("START" , 400, 700);
  
  fill(100);
  textFont(lemonYellow);  
  textSize(100);
  translate(width/2,height/2); 
  rotate(theta);                
  textAlign(CENTER);            
  text(message,0,0); 
  fill(#FFFCDD);
  text(message,8,8); 
  theta += 0.04;
  
}


void introClicks() {
 if (mouseX > 325 && mouseX < 475 && mouseY > 660 && mouseY < 710){
    mode = GAME;
    reset();
  }
}
