import 'package:flutter_app/models/pages/edukasi/education_tile_class.dart';

class EducationTileItems {
  List<EducationTileClass> items = [
    EducationTileClass(
        imageUrl: 'assets/img/icons/justice.png',
        text: 'Lihat Peraturan Perundang-undangan yang berlaku di Indonesia', routeName: '/edukasi/aturan'),
    EducationTileClass(
        imageUrl: 'assets/img/icons/cara-berkendara.png',
        text: 'Lihat Bagaimana Berkendara dengan Baik, Benar, dan Sopan', routeName: '/edukasi/tutorial'),
  ];
}
