import 'package:flutter/material.dart';
import 'package:flutter_app/shared/theme.dart';
import 'package:flutter_app/ui/pages/kendaraan/kendaraan_kosong.dart';
import 'package:flutter_app/ui/widgets/bar/appBar/custom_back_navigation_appbar.dart';

class KendaraanPage extends StatelessWidget {
  const KendaraanPage({super.key});

  PreferredSizeWidget buildAppBar(BuildContext context) {
    return customBackNavigationAppBar(
      context: context,
      title: "Kendaraan Saya",
    );
  }

  Widget buildContent() {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: 20,
        horizontal: defaultMargin,
      ),
      child: const KendaraanKosong(),
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
