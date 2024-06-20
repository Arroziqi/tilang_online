import 'package:flutter/material.dart';

import '../../../widgets/bar/appBar/custom_back_navigation_appbar.dart';

PreferredSizeWidget buildAppBar(BuildContext context) {
  return customBackNavigationAppBar(
    context: context,
    title: "Kendaraan Saya",
  );
}