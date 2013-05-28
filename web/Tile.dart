part of bathplan;

class Tile extends Drawable {
  int color;

  Tile() {

  }

  void update(double time) {

  }

  void draw(CanvasRenderingContext2D context) {

  }
}

class TileSet {
  int walls, rows, cols;
  List<List<Tile>> tiles;

  TileSet(this.walls, this.rows) {
    tiles = new List<List<Tile>>(walls);

    for (int wall = 1; wall <= walls; wall++) {
      tiles[wall] = new List<Tile>(rows);
    }
  }
}