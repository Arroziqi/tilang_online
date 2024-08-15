import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/shared/theme.dart';
import 'package:flutter_app/ui/pages/pelanggaran/components/plat_pelanggaran.dart';
import 'package:flutter_app/ui/widgets/text/note.dart';
import 'package:gap/gap.dart';

import '../notifikasi/pelanggaran/notifikasi_pelanggaran_view.dart';

class DataPelanggaran extends StatelessWidget {
  const DataPelanggaran({super.key, required this.snapshot});

  final AsyncSnapshot<QuerySnapshot<Object?>> snapshot;

  Widget buildDescription() {
    return Container(
      padding: EdgeInsets.only(
        left: defaultMargin,
        right: defaultMargin,
        top: 15,
        bottom: 12,
      ),
      width: double.infinity,
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Pelanggaran',
            style: blackTextStyle.copyWith(
              fontSize: 20,
              fontWeight: semiBold,
            ),
          ),
          Text(
            'Pelanggaran yang Anda lakukan',
            style: blackTextStyle.copyWith(
              fontSize: 15,
            ),
          ),
        ],
      ),
    );
  }

  Widget buildListPelanggaran(BuildContext context) {
    // ambil semua data pelanggaran
    List pelanggaransList = snapshot.data!.docs;

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: defaultMargin),
      child: ListView.separated(
        itemCount: pelanggaransList.length,
        itemBuilder: (context, index) {
          // ambil satu pelanggaran
          DocumentSnapshot documentSnapshot = pelanggaransList[index];
          String docID = documentSnapshot.id;

          // ambil semua detail data pelanggaran
          Map<String, dynamic> data =
              documentSnapshot.data() as Map<String, dynamic>;
          String tanggal = data['tanggal'];
          String jalan = data['jalan'];
          String kesalahan = data['kesalahan'];
          int denda = int.parse(data['denda']);
          bool status = data['selesei'];

          return PlatPelanggaran(
            onTap: () {
              if (status == false) {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => NotifikasiPelanggaranView(
                              tanggal: tanggal,
                              jalan: jalan,
                              kesalahan: kesalahan,
                              denda: denda,
                              id: docID,
                            )));
              }
            },
            status: status == false ? "Belum bayar" : "Selesei",
            title:
                "Pelanggaran $kesalahan di Jl. $jalan pada tanggal $tanggal dan dikenai denda sebesar RP.$denda",
            color: status == false ? kThirdColor : kPrimaryColor,
          );
        },
        separatorBuilder: (context, index) => const Gap(29),
      ),
    );
  }

  Widget buildNote() {
    return note();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildDescription(),
        const Gap(10),
        Expanded(
          child: buildListPelanggaran(context),
        ),
        Gap(defaultMargin),
        buildNote(),
      ],
    );
  }
}
