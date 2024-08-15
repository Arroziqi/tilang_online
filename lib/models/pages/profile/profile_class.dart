class ProfileClass {
  final String imageUrl; //link menuju gambar icon nya di dalam assets/img/icon/
  final String title;
  final String routeName; //lihat di main.dart

  // wajib menambahkan ke dalam parameter constructor jika menambahkan atribut
  const ProfileClass({required this.imageUrl, required this.title, required this.routeName});
}