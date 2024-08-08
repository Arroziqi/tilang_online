import 'package:flutter/material.dart';
import 'package:flutter_app/models/pages/masukan/input_items.dart';
import 'package:flutter_app/shared/theme.dart';
import 'package:flutter_app/ui/pages/masukan/components/input.dart';
import 'package:gap/gap.dart';

final controller = InputItems();

class FormMasukan extends StatelessWidget {
  const FormMasukan({super.key});

  Widget buildForm() {
    return ListView.separated(
      physics: const BouncingScrollPhysics(),
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
        Navigator.pushNamed(context, '/masukan/success');
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: kPrimaryColor,
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 80),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(9),
        ),
      ),
      child: Text(
        'Kirim',
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
                'Tuliskan Masukan Anda di sini',
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
