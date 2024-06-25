import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:flutter_app/models/pages/kendaraan/kendaraan_form_items.dart';
import 'package:flutter_app/services/firestore_kendaraan.dart';
import 'package:flutter_app/services/utils.dart';
import 'package:flutter_app/shared/theme.dart';
import 'package:flutter_app/ui/pages/kendaraan/components/button.dart';
import 'package:flutter_app/ui/widgets/input/custom_input_img.dart';
import 'package:flutter_app/ui/widgets/input/custom_text_form_field.dart';
import 'package:gap/gap.dart';
import 'package:image_picker/image_picker.dart';

import 'components/build_app_bar.dart';

final controller = KendaraanFormItems();

// firestore
final FirestoreKendaraan firestoreKendaraan = FirestoreKendaraan();

// text controller
final List<TextEditingController> textControllers = List.generate(
  controller.items.length,
  (index) => TextEditingController(),
);

class KendaraanForm extends StatefulWidget {
  const KendaraanForm({super.key});

  @override
  State<KendaraanForm> createState() => _KendaraanFormState();
}

class _KendaraanFormState extends State<KendaraanForm> {
  Uint8List? _imgDepan;
  Uint8List? _imgBelakang;

  void selectImageDepan() async {
    Uint8List img = await pickImage(ImageSource.gallery);
    setState(() {
      _imgDepan = img;
    });
  }

  void selectImageBelakang() async {
    Uint8List img = await pickImage(ImageSource.gallery);
    setState(() {
      _imgBelakang = img;
    });
  }

  Widget buildForm() {
    return ListView(
      physics: BouncingScrollPhysics(),
      children: [
        ListView.separated(
          physics: BouncingScrollPhysics(),
          itemCount: controller.items.length,
          itemBuilder: (context, index) => CustomTextFormField(
            controller: textControllers[index],
            labelText: controller.items[index].label,
          ),
          separatorBuilder: (context, index) => const Gap(23),
          shrinkWrap: true,
        ),
        Gap(23),
        _imgDepan != null
            ? Column(
                children: [
                  TextButton(
                    onPressed: () {
                      selectImageDepan();
                    },
                    child: Image.memory(
                      _imgDepan!,
                      height: 179,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Gap(6),
                  Text(
                    'Ketuk Gambar Untuk Mengubah Gambar',
                    style: redTextStyle.copyWith(
                      fontSize: 14,
                    ),
                  )
                ],
              )
            : CustomInputImg(
                onPressed: () {
                  selectImageDepan();
                },
                text: 'Upload foto kendaraan bagian depan'),
        Gap(23),
        _imgBelakang != null
            ? Column(
                children: [
                  TextButton(
                    onPressed: () {
                      selectImageBelakang();
                    },
                    child: Image.memory(
                      _imgBelakang!,
                      height: 179,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Gap(6),
                  Text(
                    'Ketuk Gambar Untuk Mengubah Gambar',
                    style: redTextStyle.copyWith(
                      fontSize: 14,
                    ),
                  )
                ],
              )
            : CustomInputImg(
                onPressed: () {
                  selectImageBelakang();
                },
                text: 'Upload foto kendaraan bagian belakang'),
        Gap(100),
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

  Future<void> saveKendaraan() async {// Prepare data to be saved
    Map<String, dynamic> data = {};
    for (int i = 0; i < controller.items.length; i++) {
      data[controller.items[i].label] = textControllers[i].text;

      textControllers[i].clear();
    }

    // Debug: print data
    print("Data to be added: $data");

    try {
      // Add a new data
      await firestoreKendaraan.addKendaraan(data);
      // Debug: print success message
      print("Data added successfully");
      Navigator.pushNamed(context, '/kendaraan/view');
    } catch (e) {
      // Debug: print error
      print("Failed to add data: $e");
    }}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: buildAppBar(context),
      body: buildContent(context),
      bottomSheet: Button(
          onPressed: () async {
            saveKendaraan();
          },
          text: 'Simpan'),
    );
  }
}
