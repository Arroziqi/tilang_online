import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/services/firestore_masukan.dart';
import 'package:flutter_app/ui/pages/masukan/form_masukan.dart';
import 'package:flutter_app/ui/pages/masukan/masukan_kosong.dart';
import 'package:flutter_app/ui/widgets/bar/appBar/custom_back_navigation_appbar.dart';
import 'package:gap/gap.dart';

class MasukanPage extends StatefulWidget {
  const MasukanPage({super.key});

  @override
  State<MasukanPage> createState() => _MasukanPageState();
}

class _MasukanPageState extends State<MasukanPage> {
  final FirestoreMasukan _firestoreMasukan = FirestoreMasukan();

  PreferredSizeWidget buildAppBar(BuildContext context) {
    return customBackNavigationAppBar(
        title: 'Form Masukan',
        tabBar: true,
        context: context,
        tabs: ['Masukan Anda', 'Riwayat Anda']);
  }

  Widget buildContent() {
    return TabBarView(
      children: <Widget>[
        const FormMasukan(),
        StreamBuilder(
            stream: _firestoreMasukan.getKendaraans(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                // ambil data semua kendaraan
                List masukans = snapshot.data!.docs;

                return ListView.separated(
                  itemCount: masukans.length,
                  itemBuilder: (context, index) {
                    // ambil satu kendaraan
                    DocumentSnapshot documentSnapshot = masukans[index];

                    // ambil detail informasi dari tiap kendaraan
                    Map<String, dynamic> data =
                        documentSnapshot.data() as Map<String, dynamic>;
                    String masukan = data['masukan'];
                    return ListTile(
                      title: Text(masukan),
                    );
                  },
                  separatorBuilder: (context, index) => const Gap(31),
                );
              } else {
                return const MasukanKosong();
              }
            })
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: buildAppBar(context),
        body: buildContent(),
      ),
    );
  }
}
