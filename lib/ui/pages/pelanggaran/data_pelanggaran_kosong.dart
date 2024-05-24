import 'package:flutter/material.dart';
import 'package:flutter_app/ui/pages/data_kosong.dart';

class DataPelanggaranKosong extends StatelessWidget {
  const DataPelanggaranKosong({super.key});

  @override
  Widget build(BuildContext context) {
    return const DataKosong(
        imageUrl: 'assets/img/icons/out-of-stock.png',
        text: 'Data Pelanggaran Masih \n Kosong');
  }
}
