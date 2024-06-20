class KendaraanClass {
  final String imgUrl;
  final String platNomer;
  final String noRangka;
  final String noMesin;
  final String nik;
  final bool isVerified;

  KendaraanClass({required this.imgUrl, required this.platNomer, required this.noRangka, required this.noMesin, required this.nik, this.isVerified = false});
}