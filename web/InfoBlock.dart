part of bathplan;

class InfoBlock {
  DivElement infoBlock;
  static final String BORDER_STYLE = '1px solid grey';
  String cords;
  
  InfoBlock() {
    infoBlock = query('#infoBlock');
    infoBlock.style.border = BORDER_STYLE;
    
    cordsParagraph = new ParagraphElement();
    infoBlock.nodes.add(cordsParagraph);
    cordsParagraph.text = 'test';
  }
  
  set setCords(String cords) {
    if (cords < 0) throw 'cords negative';
    this.cords = cords;
  }
  
//  void set mouseCordsText(String cords) {
//    cordsParagraph.text = cords;
//  }
  
}