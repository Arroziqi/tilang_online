import 'package:flutter/material.dart';
import 'package:flutter_app/ui/pages/login/signin_page.dart';
import 'package:flutter_app/ui/pages/login/signup_page.dart';
import 'package:flutter_app/ui/widgets/bar/appBar/custom_back_navigation_appbar.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  PreferredSizeWidget buildAppBar(BuildContext context) {
    return customBackNavigationAppBar(
        title: 'Motion',
        tabBar: true,
        context: context,
        tabs: ['Masuk', 'Daftar']);
  }

  Widget buildContent() {
    return const TabBarView(
      children: <Widget>[
        SignIn(),
        SignUp(),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: buildAppBar(context),
        body: buildContent(),
      ),
    );
  }
}
