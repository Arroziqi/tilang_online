import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_app/models/pages/profile/profile_items.dart';
import 'package:flutter_app/shared/theme.dart';
import 'package:flutter_app/ui/widgets/bar/appBar/custom_profile_appbar.dart';
import 'package:flutter_app/ui/widgets/button/button_primary.dart';
import 'package:gap/gap.dart';

// variabel controller berisi model dari item menu dengan atribut imageUrl, title, routeName
// imageUrl untuk alamat icon menu
// title untuk title dari menu
// routeName untuk menavigasikan menu ke nama rute yang sesuai
final controller = ProfileItems();

class ProfilPage extends StatelessWidget {
  const ProfilPage({super.key});

  Widget _dataProvider(String label, String value, Function() onTap){
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(label, style: blackTextStyle.copyWith(fontSize: 14, fontWeight: regular),),
          const Gap(6),
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(defaultRadius),
              border: Border.all(width: 1),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 9),
            child: Text(value, style: blackTextStyle.copyWith(fontSize: 16, fontWeight: medium),),
          )
        ],
      ),
    );
  }

  Widget buildContent(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.only(
          left: defaultMargin,
          right: defaultMargin,
          top: defaultMargin,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _dataProvider("Nama Lengkap", "Farhan Dwi Septian", (){}),
            _dataProvider("NIK", "330818223322334", (){}),
            _dataProvider("Alamat", "Rawa Simprug VI, Grogol Selatan, Kebayoran Lama, Jakarta Selatan", (){}),
            _dataProvider("No. Handphone", "0987876545434", (){}),
            _dataProvider("Email", "farhan@gmail.com", (){}),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 6),
              child: const Row(
                children: [
                  Gap(12),
                ],
              ),
            ),
            _dataProvider('Samsat Penerbit', 'Samsat Banyuwangi', (){}),
            Gap(defaultMargin),
            buttonPrimary(onPressed: (){}, text: "Simpan"),
            Gap(defaultMargin),
          ],
        ),
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
