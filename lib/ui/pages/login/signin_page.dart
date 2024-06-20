import 'package:flutter/material.dart';
import 'package:flutter_app/models/pages/login/signin/signin_items.dart';
import 'package:flutter_app/shared/theme.dart';
import 'package:flutter_app/ui/pages/login/components/input.dart';
import 'package:gap/gap.dart';

final controller = SignInItems();

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  Widget buildForm() {
    return ListView.separated(
      physics: BouncingScrollPhysics(),
      itemCount: controller.items.length,
      itemBuilder: (context, index) => Input(
        label: controller.items[index].label,
        hintText: controller.items[index].hintText,
        type: controller.items[index].type,
        // selectItems: controller.items[index].selectItems,
      ),
      shrinkWrap: true,
      separatorBuilder: (context, index) => const Gap(17),
    );
  }

  Widget buttonSubmit(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.pushNamed(context, '/login');
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
              buildForm(),
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
