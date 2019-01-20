Board board = new Board();
int gameState = 0;
int player;
boolean gameOver;
void setup() {
  size(400, 500);
  player = (int) random(-1, 2);
  smooth();
}

void draw() {
  //----------------------------------------------------
  //   LOBBY
  //----------------------------------------------------
  if (gameState == 0) {
    background(255);
    fill(200);
    textAlign(CENTER, CENTER);
    textSize(50);
    text("TIC TAC TOE", width/2, 100);


    rectMode(CENTER);
    stroke(254, 173, 206);
    strokeWeight(3);
    fill(255);


    //1 player
    if (mouseX < width/2+300/2 && mouseX > width/2-300/2 && mouseY < 200+75/2 && mouseY > 200-75/2) {
      fill(254, 173, 206);
    } else {
      fill(255);
    }
    rect(width/2, 200, 300, 75);
    textSize(40);
    fill(100);
    text("ONE PLAYER", width/2, 200);


    //two players
    stroke(207, 208, 254);
    if (mouseX < width/2+300/2 && mouseX > width/2-300/2 && mouseY < 300+75/2 && mouseY > 300-75/2) {
      fill(207, 208, 254);
    } else {
      fill(255);
    }
    rect(width/2, 300, 300, 75);
    textSize(40);
    fill(100);
    text("TWO PLAYER", width/2, 300);

    //exit
    stroke(254, 173, 206);
    if (mouseX < width/2+300/2 && mouseX > width/2-300/2 && mouseY < 400+75/2 && mouseY > 400-75/2) {
      fill(254, 173, 206);
    } else {
      fill(255);
    }
    rect(width/2, 400, 300, 75);
    textSize(40);
    fill(100);
    text("EXIT GAME", width/2, 400);
  }
  //----------------------------------------------------
  //   2 Players
  //----------------------------------------------------
  if (gameState == 2) {
    background(255);
    board.show();
    textSize(50);
    fill(0);
    textAlign(CENTER, CENTER);
    if (player == 0 ) {
      fill(254, 173, 206);
    }
    if (player == 1 ) {
      fill(207, 208, 254);
    }
    text("TIC-TAC-TOE", width/2, 450);
    textSize(20);
    if (board.checkWin(0)) {
      gameOver(0);
      gameOver = true;
    }
    if (board.checkWin(1)) {
      gameOver(1);
      gameOver = true;
    }
    if (board.boardFull()) {
      gameOver(-1);
      gameOver = true;
    }
  }
}
void gameOver(int plyr) {
  background(255);
  textAlign(CENTER, CENTER);
  textSize(100);
  fill(0);
  
  //red
  if (plyr == 0) {
    text("RED", width/2, height/2);
  }
  
  //purple
  if (plyr == 1) {
    text("PURPLE", width/2, height/2);
  }
  if (plyr == -1) {
    
    // tie
    text("TIE", width/2, height/2);
  }
}
void mousePressed() {
  for (int i = 0; i < board.tiles.length; i++) {
    if (board.tiles[i].isHover()) {
      board.choose(board.tiles[i], player);
    }
  }

  if (gameState == 0) {

    // 1 Player game
    if (mouseX < width/2+300/2 && mouseX > width/2-300/2 && mouseY < 200+75/2 && mouseY > 200-75/2) {
      println("void mousePressed() | One player game |");
      
    }

    //Two player game
    if (mouseX < width/2+300/2 && mouseX > width/2-300/2 && mouseY < 300+75/2 && mouseY > 300-75/2) {
      println("void mousePressed() | Two player game | gameState = 2; |");
      gameState = 2;
      
    }

    //Exit
    if (mouseX < width/2+300/2 && mouseX > width/2-300/2 && mouseY < 400+75/2 && mouseY > 400-75/2) {
      println("void mousePressed() | Exit | exit(); |");
      exit();
    }
  }
}
