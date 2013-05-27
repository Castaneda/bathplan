part of bathplan;

class Room {
  CanvasElement canvas;
  CanvasRenderingContext2D context;
  
  int width;
  int height;
  
  static final String BORDER_STYLE = '1px solid grey';
  
  InfoBlock infoBlock;
  
  //Плитка
  List<List> tiles;
  List<Tile> tilesRow;
  
  static final rows = 12;
  static final cols = 8;
  
  Room(this.canvas) {
    canvas.style.border = BORDER_STYLE;
    context = canvas.getContext('2d');
    
    infoBlock = new InfoBlock();

    canvas.onMouseMove.listen(onMouseMove);

  }
  
  void onMouseMove(MouseEvent event) {
    int currentX = event.offsetX;
    int currentY = event.offsetY;
    
    infoBlock.setCords = "x = $currentX, y = $currentY";
  }
}