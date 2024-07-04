import 'package:flutter/material.dart';
import 'package:flutter_app/ui/pages/notifikasi/notifikasi_lists.dart';
import 'package:flutter_app/ui/widgets/bar/appBar/custom_back_navigation_appbar.dart';

import '../../../shared/theme.dart';

class NotifikasiPage extends StatelessWidget {
  const NotifikasiPage({super.key});

  PreferredSizeWidget buildAppBar(BuildContext context) {
    return customBackNavigationAppBar(
      context: context,
      title: "Notifikasi",
    );
  }

  Widget buildContent() {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: 20,
        horizontal: defaultMargin,
      ),
      child: NotifikasiLists(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: buildContent(),
    );
  }
}
