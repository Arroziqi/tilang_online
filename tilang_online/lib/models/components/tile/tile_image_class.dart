import 'package:flutter_app/models/components/tile/tile_class.dart';

class TileImageClass extends TileClass {
  final String imageUrl;

  TileImageClass({
    required this.imageUrl,
    required super.title,
    super.subtitle,
  });
}
