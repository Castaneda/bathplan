part of bathplan;

class Room {
  CanvasRenderingContext2D context;

  int height, width;

  static final String BORDER_STYLE = '1px solid grey';
  static final int WALLS = 4;

  InfoBlock infoBlock;

  //Плитка
  TileSet tileSet;

  static final rows = 12;
  static final cols = 8;

  Room(CanvasElement canvas) {
    //canvas initialization
    width = window.innerWidth;
    height = window.innerHeight;
    canvas.width = width;
    canvas.height = height;
    context = canvas.context2d;
    canvas.style.border = BORDER_STYLE;
    //other elements
    infoBlock = new InfoBlock();
    //events
    window.onResize.listen(onResize);
    canvas.onMouseMove.listen(onMouseMove);
    //drawings
    tileSet = new TileSet(WALLS, rows, cols);
    drawWalls();
  }

  void drawWalls() {
    //style
    context.strokeStyle = '#000';
    context.shadowBlur = 0;
    context.shadowOffsetX = 0;
    context.shadowOffsetY = 0;
    context.font = '25px sans-serif';

    double wallWidth = width / WALLS;
    int wallHeight = height;

    for (int i = 0; i < WALLS; i++) {
      double xPosition = i * wallWidth;
      context.beginPath();
      context.rect(xPosition, 0, wallWidth, wallHeight);
      context.fillText('$i', xPosition + 20, 40);
      context.closePath();
      context.stroke();

    }
  }

  //Events
  void onResize(Event event) {
    width = window.innerWidth;
    height = window.innerHeight;
  }
  void onMouseMove(MouseEvent event) {
    int x = event.offsetX;
    int y = event.offsetY;

    infoBlock.setCords = "x = $x, y = $y";
  }

}