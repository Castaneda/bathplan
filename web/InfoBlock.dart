part of bathplan;

class InfoBlock {
  DivElement infoBlock;
  static final String BORDER_STYLE = '1px solid grey';
  ParagraphElement cordsParagraph;
  String cords;

  InfoBlock() {
    infoBlock = query('#infoBlock');
    infoBlock.style.border = BORDER_STYLE;

    cordsParagraph = new ParagraphElement();
    infoBlock.nodes.add(cordsParagraph);
    cordsParagraph.text = 'test';
  }

  void set setCords(String cords) {
    //if (cords < 0) throw 'cords negative';
    cordsParagraph.text = cords;
  }

}