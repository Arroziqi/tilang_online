import 'package:flutter_app/models/pages/pelanggaran/pelanggaran_class.dart';

class PelanggaranItems {
  List<PelanggaranClass> items = [
    PelanggaranClass(
        status: 'Konfirmasi',
        title: 'Kendaraan P 1234 XN (12 Juni 2024)',
        route: '/pelanggaran/view/detail'),
    PelanggaranClass(
        status: 'Terverifikasi',
        title: 'Kendaraan P 4321 XN (20 Juni 2024)',
        route: '/pelanggaran/view/detail'),
    PelanggaranClass(
        status: 'Tertolak',
        title: 'Kendaraan P 9876 XN (01 September 2024)',
        route: '/pelanggaran/view/detail'),
  ];
}
