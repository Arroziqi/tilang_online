import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_app/models/components/tile/tile_class.dart';

class NotifikasiTileItems extends TileClass {
  final String imageUrl;

  NotifikasiTileItems(
      {super.subtitle,
      required super.title,
      this.imageUrl = 'assets/img/features/feature1.png'});

  factory NotifikasiTileItems.fromFirestore(DocumentSnapshot doc) {
    Map data = doc.data() as Map;
    return NotifikasiTileItems(
        title:
            "${"Anda terkena tilang pada tanggal " + data['tanggal']} pada Jln. " +
                data['jalan'],
        imageUrl: 'assets/img/features/feature1.png');
  }
}
