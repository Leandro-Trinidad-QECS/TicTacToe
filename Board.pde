class Board {
  Tile[] tiles = new Tile[9];
  Board() {
    for ( int i = 0; i < tiles.length; i++) {
      tiles[i] = new Tile();
    }
  }

  void show() {
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
  void choose(Tile tile) {
    if (tile.value == -1) {
      tile.addValue(1);
    }
  }
}
