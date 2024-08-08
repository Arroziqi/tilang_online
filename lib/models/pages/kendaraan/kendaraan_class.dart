import 'dart:io';

class KendaraanClass {
  final String noPolisi;
  final String noRangka;
  final String noMesin;
  final String cc;
  final File? fotoKendaraan;
  final bool isVerified;

  KendaraanClass({required this.noPolisi, required this.noRangka, required this.noMesin,  required this.cc, this.fotoKendaraan, this.isVerified = false});
}