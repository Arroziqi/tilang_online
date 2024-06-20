import 'package:flutter/material.dart';
import 'package:flutter_app/models/pages/masukan/input_items.dart';
import 'package:flutter_app/shared/theme.dart';
import 'package:flutter_app/ui/pages/masukan/components/input.dart';
import 'package:gap/gap.dart';
import 'package:flutter_app/ui/pages/firestore_service.dart';

import 'package:flutter_app/ui/pages/login/components/input.dart';

class FormMasukan extends StatefulWidget {
  const FormMasukan({Key? key}) : super(key: key);

  @override
  _FormMasukanState createState() => _FormMasukanState();
}

class _FormMasukanState extends State<FormMasukan> {
  final controller = InputItems();
  final FirestoreService _firestoreService = FirestoreService();

  final TextEditingController _namaController = TextEditingController();
  final TextEditingController _nikController = TextEditingController();
  final TextEditingController _jenisMasukanController = TextEditingController();
  final TextEditingController _isiMasukanController = TextEditingController();

  Widget buildForm() {
    return ListView.separated(
      physics: BouncingScrollPhysics(),
      itemCount: controller.items.length,
      itemBuilder: (context, index) => Input(
        label: controller.items[index].label,
        hintText: controller.items[index].hintText,
        type: controller.items[index].type,
        controller: _getControllerForIndex(index),
      ),
      shrinkWrap: true,
      separatorBuilder: (context, index) => const Gap(17),
    );
  }

  TextEditingController _getControllerForIndex(int index) {
    switch (index) {
      case 0:
        return _namaController;
      case 1:
        return _nikController;
      case 2:
        return _jenisMasukanController;
      case 3:
        return _isiMasukanController;
      default:
        return TextEditingController();
    }
  }

  Widget buttonSubmit(BuildContext context) {
    return ElevatedButton(
      onPressed: () async {
        try {
          await _firestoreService.addMasukan(
            _namaController.text,
            _nikController.text,
            _jenisMasukanController.text,
            _isiMasukanController.text,
          );
          Navigator.pushNamed(context, '/masukan/success');
        } catch (e) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text('Error submitting form: $e')),
          );
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

  @override
  void dispose() {
    _namaController.dispose();
    _nikController.dispose();
    _jenisMasukanController.dispose();
    _isiMasukanController.dispose();
    super.dispose();
  }
}
