import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../shared/theme.dart';

class DataKosong extends StatelessWidget {
  const DataKosong({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset('assets/img/icons/out-of-stock.png', width: 185, height: 185,),
          const Gap(32),
          Text('Data Riwayat Masih \n Kosong', style: blackTextStyle.copyWith(
            fontWeight: regular,
            fontSize: 18,
          ),
            textAlign: TextAlign.center,),
        ],
      ),
    );
  }
}
