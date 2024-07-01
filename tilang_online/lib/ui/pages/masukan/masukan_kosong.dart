import 'package:flutter/material.dart';
import 'package:flutter_app/ui/pages/data_kosong.dart';
import 'package:flutter_app/ui/widgets/text/note.dart';

class MasukanKosong extends StatelessWidget {
  const MasukanKosong({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Expanded(
          child: DataKosong(
              imageUrl: 'assets/img/icons/out-of-stock.png',
              text: 'Data Riwayat Masih \n Kosong'),
        ),
        note(),
      ],
    );
  }
}
