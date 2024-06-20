import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/shared/theme.dart';
import 'package:flutter_app/ui/widgets/response_page/success/success_page.dart';

import '../../widgets/bar/appBar/custom_back_navigation_appbar.dart';

class MasukanSuccess extends StatelessWidget {
  const MasukanSuccess({super.key});

  PreferredSizeWidget buildAppBar(BuildContext context) {
    return customBackNavigationAppBar(
        title: 'Form Masukan', tabBar: false, context: context);
  }

  Widget buildContent(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: SuccessPage(
            text: 'Masukan telah\nkami Rekam',
          ),
        ),
        Row(
          children: [
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(
                  vertical: defaultMargin,
                  horizontal: defaultMargin,
                ),
                child: TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/home');
                  },
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.symmetric(vertical: 10,),
                  ),
                  child: Text('Kembali ke halaman Utama', style: whiteTextStyle.copyWith(fontWeight: semiBold, fontSize: 20,),),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: buildContent(context),
    );
  }
}
