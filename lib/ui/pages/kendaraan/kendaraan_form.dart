import 'package:flutter/material.dart';
import 'package:flutter_app/models/pages/kendaraan/kendaraan_form_items.dart';
import 'package:flutter_app/shared/theme.dart';
import 'package:flutter_app/ui/pages/kendaraan/components/button.dart';
import 'package:flutter_app/ui/widgets/input/custom_text_form_field.dart';
import 'package:gap/gap.dart';

import 'components/build_app_bar.dart';

final controller = KendaraanFormItems();

class KendaraanForm extends StatelessWidget {
  const KendaraanForm({super.key});

  Widget buildForm() {
    return ListView(
      children: [
        ListView.separated(
          itemCount: controller.items.length,
          itemBuilder: (context, index) => CustomTextFormField(
            labelText: controller.items[index].label,
          ),
          separatorBuilder: (context, index) => const Gap(23),
          shrinkWrap: true,
        ),
      ],
    );
  }

  Widget buildContent(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: 16,
        left: defaultMargin,
        right: defaultMargin,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Tambah Kendaraan',
            style: blackTextStyle.copyWith(
              fontSize: 22,
              fontWeight: semiBold,
            ),
          ),
          const Gap(47),
          Expanded(
            child: buildForm(),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: buildAppBar(context),
      body: buildContent(context),
      bottomSheet: Button(
          onPressed: () {
            Navigator.pushNamed(context, '/kendaraan/view');
          },
          text: 'Simpan'),
    );
  }
}
