import 'package:flutter/material.dart';
import 'package:flutter_app/ui/pages/data_kosong.dart';
import 'package:flutter_app/ui/widgets/text/note.dart';

class DataPelanggaranKosong extends StatelessWidget {
  const DataPelanggaranKosong({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Expanded(
          child: DataKosong(
              imageUrl: 'assets/img/icons/out-of-stock.png',
              text: 'Data Pelanggaran Masih \n Kosong'),
        ),
        note(),
      ],
    );
  }
}
