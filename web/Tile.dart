part of bathplan;

class Tile extends Drawable {
  CanvasRenderingContext2D context;
  int row, col;
  double width, height, startX;
  String color;
  double x, y;

  Tile(this.row, this.col, this.width, this.height, this.startX) {
    x = Room.PADDING + (width + Room.LINE_WIDTH) * col + startX;
    y = Room.PADDING + (height + Room.LINE_WIDTH) * row;
    color = '#ABC';
  }

  void update(double time) {

  }

  void draw(CanvasRenderingContext2D context) {
    this.context = context;
    //style
    context.lineWidth = Room.LINE_WIDTH;
    context.beginPath();
    context.rect(x, y, width, height);
    context.closePath();
    context.stroke();
//    context.fillStyle = color;
//    context.fillRect(x, y, width, height);
  }
  
  void changeColor() {
    context.fillStyle = color;
    context.fillRect(x, y, width, height);
  }
  
  bool isPointInside(int pX, int pY) {
    if (pX > x && pX < x + width && pY > y && pY < y + height) {
      return true;
    }
    return false;
  }
}



class TileSet {
  int rows, cols, wallHeight;
  double wallWidth, xPosition;
  double tileWidth, tileHeight;
  List<List> tiles;
  List<Tile> tileRow;

  TileSet(this.rows, this.cols, this.wallWidth, this.wallHeight, this.xPosition) {
    tileWidth = (wallWidth - (Room.LINE_WIDTH * cols) - Room.LINE_WIDTH)/cols;
    tileHeight = wallHeight/rows;
    
    tiles = new List();

    for (int row = 0; row < rows; row++) {
      tileRow = new List();
      for (int col = 0; col < cols; col++) {
        Tile tile = new Tile(row, col, tileWidth, tileHeight, xPosition);
        tileRow.add(tile);
      }
      tiles.add(tileRow);
    }
  }
  
  void draw(CanvasRenderingContext2D context) {
    for (List tileRow in tiles) {
      for (Tile tile in tileRow) {
        tile.draw(context);
      }
    }
  }
  
  void changeTileColor(int x, int y) {
    for (List tileRow in tiles) {
      for (Tile tile in tileRow) {
        if (tile.isPointInside(x, y)) {
          tile.changeColor();
        }
      }
    }
  }
  
}