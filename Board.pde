class Board {
  Tile[] tiles = new Tile[9];
  int[] boardValue = new int[9];
  Board() {
    for ( int i = 0; i < tiles.length; i++) {
      tiles[i] = new Tile();
    }
  }
  void show() {
    for ( int i = 0; i < tiles.length; i++) {
      boardValue[i] = tiles[i].value;
    }
    tiles[0].offset(100, 100);
    tiles[1].offset(200, 100);
    tiles[2].offset(300, 100);
    tiles[3].offset(100, 200);
    tiles[4].offset(200, 200);
    tiles[5].offset(300, 200);
    tiles[6].offset(100, 300);
    tiles[7].offset(200, 300);
    tiles[8].offset(300, 300);

    for ( int i = 0; i < tiles.length; i++) {
      tiles[i].show();
    }
  }
  
  
  boolean checkWin(int player) {
    if (boardValue[0] == player && boardValue[1] == player && boardValue[2] == player) {
      return true;
    }
    if (boardValue[3] == player && boardValue[4] == player && boardValue[5] == player) {
      return true;
    }
    if (boardValue[6] == player && boardValue[7] == player && boardValue[8] == player) {
      return true;
    }
    if (boardValue[0] == player && boardValue[3] == player && boardValue[6] == player) {
      return true;
    }
    if (boardValue[1] == player && boardValue[4] == player && boardValue[7] == player) {
      return true;
    }
    if (boardValue[2] == player && boardValue[5] == player && boardValue[8] == player) {
      return true;
    }
    if (boardValue[0] == player && boardValue[4] == player && boardValue[8] == player) {
      return true;
    }
    if (boardValue[2] == player && boardValue[4] == player && boardValue[6] == player) {
      return true;
    }

    return false;
  }
  boolean boardFull() {
    for(int i = 0; i < tiles.length; i++) {
      if(boardValue[i] == -1) {
        return false;
      }
    }
    return true;
  }
  void choose(Tile tile, int playr) {
    if (tile.value == -1) {
      tile.addValue(playr);
      player += 1;
      if (player >= 2) {
        player = 0;
      }
    }
  }
}
