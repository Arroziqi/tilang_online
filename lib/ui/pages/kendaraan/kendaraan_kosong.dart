import 'package:flutter/material.dart';
import 'package:flutter_app/ui/pages/data_kosong.dart';

class KendaraanKosong extends StatelessWidget {
  const KendaraanKosong({super.key});

  @override
  Widget build(BuildContext context) {
    return const DataKosong(
        imageUrl: 'assets/img/icons/kendaraan-kosong.png',
        text: 'Data Kendaraan Masih \n Kosong');
  }
}
