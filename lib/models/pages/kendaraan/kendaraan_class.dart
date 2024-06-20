class KendaraanClass {
  final String imgUrl;
  final String platNomer;
  final String nik;
  final bool isVerified;

  KendaraanClass({required this.platNomer, required this.nik, this.isVerified = false, required this.imgUrl});
}