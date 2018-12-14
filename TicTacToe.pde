Board board = new Board();
boolean inGame;
int player;
boolean gameOver;
void setup() {
  size(400, 500);
  player = (int) random(-1, 2);
  smooth();
}

void draw() {
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
void gameOver(int plyr) {
  background(255);
  textAlign(CENTER, CENTER);
  textSize(100);
  fill(0);
  if (plyr == 0) {
    text("RED", width/2, height/2);
  }
  if (plyr == 1) {
    text("PURPLE", width/2, height/2);
  }
  if (plyr == -1) {
    text("TIE", width/2, height/2);
  }
}
void mousePressed() {
  for (int i = 0; i < board.tiles.length; i++) {
    if (board.tiles[i].isHover()) {
      board.choose(board.tiles[i], player);
    }
  }
}
