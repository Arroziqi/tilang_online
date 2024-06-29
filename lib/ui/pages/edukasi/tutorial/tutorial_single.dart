import 'package:flutter/material.dart';
import 'package:flutter_app/models/pages/edukasi/tutorial/tutorial_items.dart';
import 'package:flutter_app/shared/theme.dart';
import 'package:flutter_app/ui/widgets/bar/appBar/custom_back_navigation_appbar.dart';

// todo: buat desainnya, manfaatkan [controller] untuk menaruh konten

class TutorialSingle extends StatelessWidget {
  const TutorialSingle({super.key, required this.controller});

  final TutorialItems controller;

  Widget buildContent(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          left: defaultMargin, right: defaultMargin, top: 2 * defaultMargin),
      // todo: sesuaikan [child]-nya
      child: Text('isi konten'),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customBackNavigationAppBar(context: context, title: 'Tutorial'),
      body: buildContent(context),
    );
  }
}
