import 'package:flutter/material.dart';
import 'package:flutter_app/ui/pages/data_kosong.dart';

class DataRiwayatKosong extends StatelessWidget {
  const DataRiwayatKosong({super.key});

  @override
  Widget build(BuildContext context) {
    return const DataKosong(
        imageUrl: 'assets/img/icons/out-of-stock.png',
        text: 'Data Riwayat Masih \n Kosong');
  }
}
