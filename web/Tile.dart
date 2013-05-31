part of bathplan;

class Tile extends Drawable {
  CanvasRenderingContext2D context;
  int row, col;
  double width, height, startX;
  List availableColors;
  String color;
  double x, y;

  Tile(this.context, this.row, this.col, this.width, this.height, this.startX) {
    x = Room.PADDING + (width + Room.LINE_WIDTH) * col + startX;
    y = Room.PADDING + (height + Room.LINE_WIDTH) * row;
    availableColors = ['#FFF', '#ABC', '#f1ecd5', '#19549e'];
    color = '#FFF';
  }

  void update() {
    context.clearRect(x, y, width, height);
    draw();
  }

  void draw() {
    //style
    context.lineWidth = Room.LINE_WIDTH;
    context.fillStyle = color;

    context.beginPath();
    context.rect(x, y, width, height);
    context.fillRect(x, y, width, height);
    context.closePath();
    context.stroke();
  }

  void pickNextColor() {
    for (int i = 0; i < availableColors.length; i++) {
      if (color == availableColors[i]) {
        if ((i + 1) < availableColors.length) {
          color = availableColors[i + 1];
          return;
        } else {
          color = availableColors[0];
          return;
        }
      }
    }
  }

  void changeColor() {
    pickNextColor();
    update();
  }

  void printInfo(InfoBlock infoBlock) {
    int hRow = row + 1;
    int hCol = col + 1;
    infoBlock.setTileInfo = 'Tile: $hRow/$hCol';
  }

  bool isPointInside(int pX, int pY) {
    if ((pX > x && pX < (x + width)) && (pY > y && pY < (y + height))) {
      return true;
    }
    return false;
  }
}

