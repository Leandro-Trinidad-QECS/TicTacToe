Board board = new Board();
void setup() {
  size(400, 500);
}

void draw() {
  background(255);
  board.show();
}
void mousePressed() {
  for (int i = 0; i < board.tiles.length; i++) {
    if (board.tiles[i].isHover()) {
      board.choose(board.tiles[i]);
    }
  }
}
