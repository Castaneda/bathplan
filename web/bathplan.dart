library bathplan;

import 'dart:html';
part 'Room.dart';
part 'TileSet.dart';
part 'Tile.dart';
part 'InfoBlock.dart';
part 'Drawable.dart';

void main() {
  CanvasElement canvas = query("#canvas");
  Room room = new Room(canvas);
}