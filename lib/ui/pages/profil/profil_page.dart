import 'package:flutter/material.dart';
import 'package:flutter_app/models/pages/profile/profile_items.dart';
import 'package:flutter_app/shared/theme.dart';
import 'package:flutter_app/ui/widgets/bar/appBar/custom_profile_appbar.dart';
import 'package:gap/gap.dart';

// variabel controller berisi model dari item menu dengan atribut imageUrl, title, routeName
// imageUrl untuk alamat icon menu
// title untuk title dari menu
// routeName untuk menavigasikan menu ke nama rute yang sesuai
final controller = ProfileItems();

class ProfilPage extends StatelessWidget {
  const ProfilPage({super.key});

  Widget itemBuilder(BuildContext context, int index) {
    // todo: sesuaikan ukurannya tanpa ngerubah struktur, cukup tambahkan parameter width atau size menyesuaikan jenis widget
    // todo: buat listTile bisa merespon gesture tap sesuai rute yang ada di model dengan menambahkan attribut onTap pada widget ListTile
    return ListTile(
      leading: Image.asset(
        controller.items[index].imageUrl,
      ),
      title: Text(
        controller.items[index].title,
      ),
      trailing: Icon(Icons.arrow_forward_ios),
    );
  }

  Widget buildContent(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: defaultMargin,
        right: defaultMargin,
        top: defaultMargin,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Menu Pilihan',
            style: blackTextStyle.copyWith(
              fontSize: 24,
              fontWeight: semiBold,
            ),
          ),
          Gap(41),
          ListView.separated(
            itemBuilder: (context, index) => itemBuilder(context, index),
            separatorBuilder: (context, index) => Divider(
              thickness: 1.5,
            ),
            itemCount: controller.items.length,
            shrinkWrap: true,
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customProfileAppBar(context: context),
      body: buildContent(context),
    );
  }
}
