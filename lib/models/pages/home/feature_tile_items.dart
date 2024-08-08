import 'feature_tile_class.dart';

class FeatureTileItems {
  List<FeatureTileClass> items = [
    FeatureTileClass(
        title: 'Lihat Pelanggaran',
        description: 'Lihat semua pelanggaran yang masih berjalan',
        imageUrl: 'assets/img/features/feature1.png'),
    FeatureTileClass(
        title: 'Form Masukan',
        description:
            'Jika ada masukan untuk aplikasi kami, silakan mengisi di sini',
        imageUrl: 'assets/img/features/feature2.png'),
    FeatureTileClass(
        title: 'Kendaraan Saya',
        description: 'Simpan data kendaraan Anda',
        imageUrl: 'assets/img/features/feature3.png'),
    FeatureTileClass(
        title: 'Media Sosial',
        description: 'Ikuti info terbaru dari Korlantas',
        imageUrl: 'assets/img/features/feature4.png')
  ];
}
