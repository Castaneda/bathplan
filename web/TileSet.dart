part of bathplan;

class TileSet {
  CanvasRenderingContext2D context;
  InfoBlock infoBlock;
  int rows, cols, wallHeight;
  double wallWidth, xPosition;
  double tileWidth, tileHeight;
  List<List> tiles;
  List<Tile> tileRow;

  TileSet(this.context, this.rows, this.cols, this.wallWidth, this.wallHeight, this.xPosition, this.infoBlock) {
    tileWidth = (wallWidth - (Room.LINE_WIDTH * cols) - Room.LINE_WIDTH)/cols;
    tileHeight = (wallHeight - (Room.LINE_WIDTH * rows) - Room.LINE_WIDTH)/rows;

    tiles = new List();

    for (int row = 0; row < rows; row++) {
      tileRow = new List();
      for (int col = 0; col < cols; col++) {
        Tile tile = new Tile(context, row, col, tileWidth, tileHeight, xPosition);
        //human readable rows and cols
        int hRow = row + 1;
        int hCol = col + 1;
        infoBlock.setCords = 'wall: $wallWidth/$wallHeight, tiles: $hRow/$hCol ($tileWidth/$tileHeight each)';
        tileRow.add(tile);
      }
      tiles.add(tileRow);
    }
  }

  void draw() {
    for (List tileRow in tiles) {
      for (Tile tile in tileRow) {
        tile.draw();
      }
    }
  }

  void changeTileColor(int x, int y) {
    for (List tileRow in tiles) {
      for (Tile tile in tileRow) {
        if (tile.isPointInside(x, y)) {
          tile.printInfo(infoBlock);
          tile.changeColor();
        }
      }
    }
  }

}