part of bathplan;

class InfoBlock {
  DivElement infoBlock;
  static final String BORDER_STYLE = '1px solid grey';
  ParagraphElement cordsParagraph;
  ParagraphElement tileParagraph;
  String cords, tileInfo;

  InfoBlock() {
    infoBlock = query('#infoBlock');
    infoBlock.style.border = BORDER_STYLE;

    cordsParagraph = new ParagraphElement();
    tileParagraph = new ParagraphElement();
    infoBlock.nodes.add(cordsParagraph);
    infoBlock.nodes.add(tileParagraph);
    cordsParagraph.text = 'Cords paragraph';
    tileParagraph.text = 'Tile info';
  }

  void set setCords(String cords) {
    cordsParagraph.text = cords;
  }

  void set setTileInfo(String tileInfo) {
    tileParagraph.text = tileInfo;
  }

}