import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/services/firestore_pelanggaran.dart';
import 'package:flutter_app/ui/pages/notifikasi/pelanggaran/notifikasi_pelanggaran.dart';
import 'package:flutter_app/ui/widgets/tile/custom_list_tile_red.dart';
import 'package:gap/gap.dart';

final FirestorePelanggaran firestorePelanggaran = FirestorePelanggaran();

class NotifikasiLists extends StatelessWidget {
  const NotifikasiLists({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
      stream: firestorePelanggaran.getPelanggarans(),
      builder: (context, snapshot) {
        // jika ada data, ambil semua
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const CircularProgressIndicator();
        }
        if (snapshot.hasData) {
          List pelanggaransList = snapshot.data!.docs;

          // tampilkan sebagai list
          return ListView.separated(
            itemBuilder: (context, index) {
              // ambil tiap document
              DocumentSnapshot documentSnapshot = pelanggaransList[index];
              String docID = documentSnapshot.id;

              // ambil data dari setiap document
              Map<String, dynamic> data =
                  documentSnapshot.data() as Map<String, dynamic>;
              String tanggal = data['tanggal'];
              String jalan = data['jalan'];
              String kesalahan = data['kesalahan'];
              int denda = int.parse(data['denda']);

              // tampilkan dalam list tile
              return CustomListTileRed(
                title: "Anda terkena tilang pada tanggal " +
                    tanggal +
                    " di Jln. " +
                    jalan,
                imageUrl: 'assets/img/features/feature1.png',
                onTap: () {
                  Navigator.push(
                      (context),
                      MaterialPageRoute(
                          builder: (context) => NotifikasiPelanggaran(
                                tanggal: tanggal,
                                jalan: jalan,
                                kesalahan: kesalahan,
                                denda: denda, id: docID,
                              )));
                },
              );
            },
            itemCount: pelanggaransList.length,
            separatorBuilder: (BuildContext context, int index) =>
                const Gap(22),
          );
        } else {
          return const Text('No Notifications found!');
        }
      },
    );
  }
}
