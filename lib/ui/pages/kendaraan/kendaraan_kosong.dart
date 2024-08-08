import 'package:flutter/material.dart';
import 'package:flutter_app/ui/pages/data_kosong.dart';
import 'package:flutter_app/ui/pages/kendaraan/components/button.dart';

class KendaraanKosong extends StatelessWidget {
  const KendaraanKosong({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Expanded(
          child: DataKosong(
            imageUrl: 'assets/img/icons/kendaraan-kosong.png',
            text: 'Data Kendaraan Masih \n Kosong',
          ),
        ),
        Button(
          onPressed: () => Navigator.pushNamed(context, '/kendaraan/form'),
          text: 'Tambah',
        ),
      ],
    );
  }
}
