void Rtactile(int x, int y, int w, int h) {
  if (mouseX > x && mouseX < x+w && mouseY > y && mouseY < y+h){
  stroke(250, 255, 0);
  click. play();
  click.rewind();
  } else {
  noStroke();
  }
}


void reset() {
  //game initialization
  score = 0;
  life = 3;
  
  //paddle
  px = width/2;
  py = height;
  
  //ball
  bx = bx + vx;             //movement
  by = by + vy;
  bx = width/2;
  by = height-200;
  
  ///bricks
     alive[0] = true;
     alive[1] = true;
     alive[2] = true;
     alive[3] = true;
     alive[4] = true;
     alive[5] = true;
     alive[6] = true;
     alive[7] = true;
     alive[8] = true;
     alive[9] = true;
     alive[10] = true;
     alive[11] = true;
     alive[12] = true;
     alive[13] = true;
     alive[14] = true;
     alive[15] = true;
     alive[16] = true;
     alive[17] = true;
     alive[18] = true;
     alive[19] = true;
     alive[20] = true;
     alive[21] = true;
     alive[22] = true;
     alive[23] = true;
     alive[24] = true;
     alive[25] = true;
     alive[26] = true;
     alive[27] = true;
     alive[28] = true;
     alive[29] = true;
     alive[30] = true;
     alive[31] = true;
     alive[32] = true;
     alive[33] = true;
     alive[34] = true;
     alive[35] = true;
     alive[36] = true;
     alive[37] = true;
     alive[38] = true;
     alive[39] = true;
     alive[40] = true;
     alive[41] = true;
     alive[42] = true;
     alive[43] = true;
     alive[44] = true;
     alive[45] = true;
     alive[46] = true;
     alive[47] = true;
     alive[48] = true;
}
