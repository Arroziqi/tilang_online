import 'package:flutter/material.dart';
import 'package:flutter_app/services/firestore_pelanggaran.dart';
import 'package:flutter_app/ui/pages/pelanggaran/data_pelanggaran.dart';
import 'package:flutter_app/ui/pages/pelanggaran/data_pelanggaran_kosong.dart';
import 'package:flutter_app/ui/widgets/bar/appBar/custom_back_navigation_appbar.dart';

FirestorePelanggaran firestorePelanggaran = FirestorePelanggaran();

class PelanggaranPage extends StatefulWidget {
  const PelanggaranPage({super.key});

  @override
  State<PelanggaranPage> createState() => _PelanggaranPageState();
}

class _PelanggaranPageState extends State<PelanggaranPage> {
  PreferredSizeWidget buildAppBar(BuildContext context) {
    return customBackNavigationAppBar(
        title: 'Lihat Pelanggaran', tabBar: true, context: context);
  }

  Widget buildContent() {
    return TabBarView(
      children: <Widget>[
        StreamBuilder(
            stream: firestorePelanggaran.getPelanggarans(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                if (snapshot.data!.docs.isNotEmpty) {
                  return DataPelanggaran(
                    snapshot: snapshot,
                  );
                } else {
                  return const DataPelanggaranKosong();
                }
              } else {
                return const DataPelanggaranKosong();
              }
            }),
        StreamBuilder(
            stream: firestorePelanggaran.getRiwayatPelanggarans(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                if (snapshot.data!.docs.isNotEmpty) {
                  return DataPelanggaran(
                    snapshot: snapshot,
                  );
                } else {
                  return const DataPelanggaranKosong();
                }
              } else {
                return const DataPelanggaranKosong();
              }
            }),
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
