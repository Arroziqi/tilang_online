import 'package:flutter/material.dart';
import 'package:flutter_app/ui/pages/kendaraan/components/button_double.dart';

import 'components/build_app_bar.dart';

class KendaraanView extends StatelessWidget {
  const KendaraanView({super.key});

  Widget buildContent(){
    return Center(child: Text('asu'),);
  }

  Widget buildBottomSheet(BuildContext context){
    return ButtonDouble(onPressed: [
      (){Navigator.pushNamed(context, '/kendaraan/lists');}, (){Navigator.pushNamed(context, '/kendaraan/form');}
    ], texts: ['Kembali', 'Edit']);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: buildContent(),
      bottomSheet: buildBottomSheet(context),
    );
  }
}
