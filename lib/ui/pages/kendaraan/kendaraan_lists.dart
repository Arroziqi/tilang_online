import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/services/firestore_kendaraan.dart';
import 'package:flutter_app/shared/theme.dart';
import 'package:flutter_app/ui/pages/kendaraan/components/tile.dart';
import 'package:flutter_app/ui/pages/kendaraan/kendaraan_kosong.dart';
import 'package:gap/gap.dart';

import 'components/build_app_bar.dart';
import 'components/button.dart';

final FirestoreKendaraan firestoreKendaraan = FirestoreKendaraan();

class KendaraanLists extends StatelessWidget {
  const KendaraanLists({super.key});

  Widget buildContent() {
    return Padding(
      padding: EdgeInsets.only(
        left: defaultMargin,
        right: defaultMargin,
        top: 31,
      ),
      child: StreamBuilder<QuerySnapshot>(
          stream: firestoreKendaraan.getKendaraans(),
          builder: (context, snapshot) {
            // jika lagi loading
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const CircularProgressIndicator();
            }
            if (snapshot.hasData) {
              // ambil data semua kendaraan
              List kendaraans = snapshot.data!.docs;

              return ListView.separated(
                itemCount: kendaraans.length,
                itemBuilder: (context, index) {
                  // ambil satu kendaraan
                  DocumentSnapshot documentSnapshot = kendaraans[index];

                  // ambil detail informasi dari tiap kendaraan
                  Map<String, dynamic> data =
                      documentSnapshot.data() as Map<String, dynamic>;
                  String platNomer = data['no_polisi'];
                  String cc = data['cc'];
                  String? fotoKendaraan = data['foto_kendaraan'];
                  bool isVerified = data['isVerified'];
                  return Tile(
                    fotoKendaraan: fotoKendaraan,
                    platNomer: platNomer,
                    isVerified: isVerified,
                    cc: cc,
                  );
                },
                separatorBuilder: (context, index) => const Gap(31),
              );
            } else {
              return const KendaraanKosong();
            }
          }),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: buildContent(),
      bottomSheet: Button(
          onPressed: () {
            Navigator.pushNamed(context, '/kendaraan/form');
          },
          text: 'Tambah'),
    );
  }
}
