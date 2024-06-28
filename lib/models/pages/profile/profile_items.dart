import 'profile_class.dart';

class ProfileItems {
  List<ProfileClass> items = [
    // todo: lengkapi sesuai fitur yang ada di profile page
    // routeName ditulis dengan aturan '/profile/<menu title>', lowercase, spasi diganti dengan '-', tidak ada karakter lain selain strip
    ProfileClass(imageUrl: 'assets/img/icons/profil.png', title: 'Data Pengemudi', routeName: '/profile/data-pengemudi'),
  ];
}