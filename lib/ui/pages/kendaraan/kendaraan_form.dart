import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_app/models/pages/kendaraan/kendaraan_class.dart';
import 'package:flutter_app/models/pages/kendaraan/kendaraan_form_items.dart';
import 'package:flutter_app/services/firestore_kendaraan.dart';
import 'package:flutter_app/services/utils.dart';
import 'package:flutter_app/shared/theme.dart';
import 'package:flutter_app/ui/pages/kendaraan/components/button.dart';
import 'package:flutter_app/ui/widgets/input/custom_input_image.dart';
import 'package:flutter_app/ui/widgets/input/custom_text_form_field.dart';
import 'package:gap/gap.dart';

import 'components/build_app_bar.dart';

final controller = KendaraanFormItems();
FirestoreKendaraan firestoreKendaraan = FirestoreKendaraan();

class KendaraanForm extends StatefulWidget {
  const KendaraanForm({super.key});

  @override
  State<KendaraanForm> createState() => _KendaraanFormState();
}

class _KendaraanFormState extends State<KendaraanForm> {
  final List<TextEditingController> _textEditingControllers = List.generate(
      controller.items.length, (index) => TextEditingController());

  KendaraanClass? _dataKendaraan;
  File? _fotoKendaraan;

  @override
  void dispose() {
    // hapus semua isi dari controller setelah widget disposed
    for (final _textEditingController in _textEditingControllers) {
      _textEditingController.dispose();
    }
    super.dispose();
  }

  Widget buildForm() {
    return ListView(
      children: [
        ListView.separated(
          itemCount: controller.items.length,
          itemBuilder: (context, index) => CustomTextFormField(
            labelText: controller.items[index].label,
            controller: _textEditingControllers[index],
          ),
          separatorBuilder: (context, index) => const Gap(23),
          shrinkWrap: true,
        ),
        const Gap(23),
        Container(
          decoration: BoxDecoration(
            color: const Color(0xffFFB1B1),
            borderRadius: BorderRadius.circular(10),
          ),
          child: _fotoKendaraan == null
              ? CustomInputImage(
                  text: 'Upload foto kendaraan',
                  onPressed: () async {
                    File? image = await pickImageFromGallery();
                    if (image == null) return;
                    setState(() {
                      _fotoKendaraan = image;
                    });
                  },
                )
              : GestureDetector(
                  onTap: () async {
                    File? image = await pickImageFromGallery();
                    if (image == null) return;
                    setState(() {
                      _fotoKendaraan = image;
                    });
                  },
                  child: Image.file(_fotoKendaraan!),
                ),
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

  void simpan() {
    setState(() {
      _dataKendaraan = KendaraanClass(
        noPolisi: _textEditingControllers[0].text,
        noRangka: _textEditingControllers[1].text,
        noMesin: _textEditingControllers[2].text,
        cc: _textEditingControllers[3].text,
        fotoKendaraan: _fotoKendaraan,
      );
    });
    firestoreKendaraan.addKendaraan(_dataKendaraan!);
    Navigator.pushNamed(context, '/kendaraan');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: buildAppBar(context),
      body: buildContent(context),
      bottomSheet: Button(onPressed: simpan, text: 'Simpan'),
    );
  }
}
