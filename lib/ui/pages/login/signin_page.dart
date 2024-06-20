import 'package:flutter/material.dart';
import 'package:flutter_app/models/pages/login/signin/signin_items.dart';
import 'package:flutter_app/shared/theme.dart';
import 'package:flutter_app/ui/pages/login/components/input.dart';
import 'package:flutter_app/ui/pages/login/services/auth_service.dart';
import 'package:gap/gap.dart';

import 'package:firebase_auth/firebase_auth.dart';

final controller = SignInItems();
final AuthService _authService = AuthService();

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  Widget buildForm(BuildContext context) {
    return ListView.separated(
      physics: BouncingScrollPhysics(),
      itemCount: controller.items.length,
      itemBuilder: (context, index) => Input(
        label: controller.items[index].label,
        hintText: controller.items[index].hintText,
        type: controller.items[index].type,
        controller:
            TextEditingController(), // Pass a TextEditingController here
      ),
      shrinkWrap: true,
      separatorBuilder: (context, index) => const Gap(17),
    );
  }

  Widget buttonSubmit(BuildContext context) {
    return ElevatedButton(
      onPressed: () async {
        // Fetch the email and password from the input fields
        String email = controller.items[0].hintText;
        String password = controller.items[1].hintText;

        // Attempt to sign in
        User? user =
            await _authService.signInWithEmailAndPassword(email, password);
        if (user != null) {
          Navigator.pushNamed(context, '/home');
        } else {
          // Handle sign-in error
          print('Sign-in failed');
        }
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: kPrimaryColor,
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 80),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(9),
        ),
      ),
      child: Text(
        'Masuk',
        style: whiteTextStyle.copyWith(
          fontSize: 20,
          fontWeight: semiBold,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: defaultMargin,
        right: defaultMargin,
        top: defaultMargin,
      ),
      child: ListView(
        children: [
          Column(
            children: [
              Text(
                'Silahkan Masuk Menggunakan Akun Anda',
                style: blackTextStyle.copyWith(
                  fontSize: 24,
                  fontWeight: semiBold,
                ),
              ),
              const Gap(38),
              buildForm(context),
              const Gap(38),
              buttonSubmit(context),
              Gap(defaultMargin),
            ],
          ),
        ],
      ),
    );
  }
}
