void game() {
  background(100);
  pause.pause();
  //paddle----------------------------------------------------
  
  fill(255);              //draw paddle
  circle(px, py, pd);
  if (akey) px = px - 5;  //key movement
  if (dkey) px = px + 5;
  if (px > 740) {
    px = 740;
  } else if (px < 60) {
    px = 60;
}
  
  
  //ball------------------------------------------------------
  
  fill(255);                //draw ball
  circle(bx, by, bd);
  if (timer < 0) {
  bx = bx + vx;             //movement
  by = by + vy;
  }
  
  //bouncing
  if (dist(bx, by, px, py) < bd/2 + pd/2)  { //paddle bounce off 
    vx = (bx -px)/10;
    vy = (by - py)/10;
    jump.play();
    jump. rewind();
  }
  
  if (by < bd/2 ) { //bounce off top
    vy = vy * -1;
  }
  if (bx < bd/2 || bx > width-bd/2) { //bouce off side
    vx = vx * -1;
  }
  
  //scoreboard
  textSize(30);
  text("score:" + score, 100, 780);
  text("life:" + life, 680, 780);
  timer = timer -1;
  
  //life
  if (by > 800) {
   life= life -1;
   by = height-200;
   bx = width/2;
   timer = 100;
  }
  
  if (life < 1) {
    mode = GAMEOVERLOSE;
  }
  
  if (score > 5) {
    mode = GAMEOVERWIN;
  }
  
  
  
  //brick
   int i = 0;
   while (i < n) {
     if (alive[i] == true) {
     manageBrick(i);
     }
     i = i + 1;
   }
 
}


void manageBrick(int i) {
   if (y[i] == 50) fill(0);
   if (y[i] == 110) fill(#DF151A);
   if (y[i] == 170) fill(#FD8603);
   if (y[i] == 230) fill(#F4F328);
   if (y[i] == 290) fill(#00DA3C);
   if (y[i] == 350) fill(#00CBE7);
   if (y[i] == 410) fill(255);
   circle(x[i], y[i], brickd); 
   if (dist(bx, by, x[i], y[i]) < bd/2 + brickd/2)  { 
    vx = (bx - x[i])/10;
    vy = (by - y[i])/10;
    alive[i] = false;
    score++;
    jump.play();
    jump. rewind();
  }
}

void gameClicks() {
   if (mouseX > 0 && mouseX < 800 && mouseY > 0 && mouseY < 800){
    mode = PAUSE;
  }
}





  
     //circle(x[0], y[i], brickd);
     //circle(x[1], y[i], brickd);
     //circle(x[2], y[i], brickd);
     //circle(x[3], y[i], brickd);
     //circle(x[4], y[i], brickd);
     //circle(x[5], y[i], brickd);
     //circle(x[6], y[i], brickd);
   
