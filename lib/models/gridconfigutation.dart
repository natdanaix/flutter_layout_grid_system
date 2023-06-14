import 'package:flutter_layout_grid/flutter_layout_grid.dart';

class GridConfigutation {
  String areas;
  List<TrackSize> columnSizes;
  List<TrackSize> rowSizes;
  GridConfigutation({
    required this.areas,
    required this.columnSizes,
    required this.rowSizes,
  });
}
