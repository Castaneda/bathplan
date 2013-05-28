library bathplan;

import 'dart:html';
part 'Room.dart';
part 'Tile.dart';
part 'InfoBlock.dart';
part 'Drawable.dart';

void main() {
  CanvasElement canvas = query("#canvas");
  Room room = new Room(canvas);
//  query("#sample_text_id")
//    ..text = "Click me!"
//    ..onClick.listen(reverseText);
}

void reverseText(MouseEvent event) {
//  var text = query("#sample_text_id").text;
//  var buffer = new StringBuffer();
//  for (int i = text.length - 1; i >= 0; i--) {
//    buffer.write(text[i]);
//  }
//  query("#sample_text_id").text = buffer.toString();
}
