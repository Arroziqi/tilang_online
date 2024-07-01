import 'package:flutter/material.dart';
import 'package:flutter_app/ui/pages/edukasi/education_lists.dart';
import 'package:flutter_app/ui/widgets/bar/appBar/custom_appbar.dart';

import '../../../shared/theme.dart';

class EdukasiPage extends StatelessWidget {
  const EdukasiPage({super.key});

  PreferredSizeWidget buildAppBar() {
    return customAppBar(
      title: "Edukasi",
    );
  }

  Widget buildContent() {
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
      appBar: buildAppBar(),
      body: buildContent(),
    );
  }
}
