import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/models/pages/kendaraan/kendaraan_items.dart';
import 'package:flutter_app/shared/theme.dart';
import 'package:flutter_app/ui/pages/kendaraan/components/tile.dart';
import 'package:flutter_app/ui/pages/kendaraan/kendaraan_form.dart';
import 'package:flutter_app/ui/pages/kendaraan/kendaraan_page.dart';
import 'package:gap/gap.dart';

import 'components/build_app_bar.dart';
import 'components/button.dart';

final controller = KendaraanItems();

class KendaraanLists extends StatelessWidget {
  const KendaraanLists({super.key});

  Widget buildContent(BuildContext context, List kendaraanList) {

    return Padding(
      padding: EdgeInsets.only(
        left: defaultMargin,
        right: defaultMargin,
        top: 31,
      ),
      child: ListView.separated(
        itemCount: kendaraanList.length,
        itemBuilder: (context, index) {
          DocumentSnapshot documentSnapshot = kendaraanList[index];
          // String docID = documentSnapshot.id;

          Map<String, dynamic> data = documentSnapshot.data() as Map<String, dynamic>;

          return Tile(
              // dummy img
              imgUrl: 'assets/img/kendaraan/motor1.png',
              platNomer: data['No. Polisi / TKNB'],
              nik: data['NIK'],
              isVerified: data['isVerified'],);
        },
        separatorBuilder: (context, index)=>Gap(31),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: StreamBuilder<QuerySnapshot>(
        stream: firestoreKendaraan.getKendaraans(),
        builder: (context, snapshot){
          if(snapshot.hasData){
            List kendaraanList = snapshot.data!.docs;
            return buildContent(context, kendaraanList);
          }
          else {
            return KendaraanPage();
          }
        },
      ),
      // body: buildContent(),
      bottomSheet: Button(
          onPressed: () {
            Navigator.pushNamed(context, '/kendaraan/form');
          },
          text: 'Tambah'),
    );
  }
}
