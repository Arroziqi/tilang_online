import 'package:flutter/material.dart';
import 'package:flutter_app/ui/pages/edukasi/custom_edukasi_app_bar.dart';
import 'package:flutter_app/ui/pages/edukasi/education_lists.dart';

import '../../../shared/theme.dart';

class EdukasiPage extends StatelessWidget {
  const EdukasiPage({super.key});

  Widget buildContent(){
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: 15,
        horizontal: defaultMargin,
      ),
      child: ListView(
        children: [
          educationLists(),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customEdukasiAppBar(),
      body: buildContent(),
    );
  }
}
