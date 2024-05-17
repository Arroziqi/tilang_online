import 'package:flutter/material.dart';
import 'package:flutter_app/ui/pages/home/home_page.dart';
import 'package:flutter_app/ui/widgets/appbar/custom_appbar.dart';


class MainPage extends StatelessWidget {
  const MainPage({super.key});

  PreferredSizeWidget buildAppBar(){
    return customAppBar();
  }

  Widget buildContent() {
    return HomePage();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: buildContent(),
    );
  }
}
