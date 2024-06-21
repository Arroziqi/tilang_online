import 'package:flutter/material.dart';
import 'package:flutter_app/models/pages/masukan/input_items.dart';
import 'package:flutter_app/services/firestore_masukan.dart';
import 'package:flutter_app/shared/theme.dart';
import 'package:flutter_app/ui/pages/masukan/components/input.dart';
import 'package:gap/gap.dart';

final controller = InputItems();

// firestore
final FirestoreMasukan firestoreMasukan = FirestoreMasukan();

// text controller
final List<TextEditingController> textControllers = List.generate(controller.items.length, (index)=>TextEditingController(),);


class FormMasukan extends StatelessWidget {
  const FormMasukan({super.key});

  Widget buildForm() {
    return ListView.separated(
      physics: BouncingScrollPhysics(),
      itemCount: controller.items.length,
      itemBuilder: (context, index) => Input(
        label: controller.items[index].label,
        hintText: controller.items[index].hintText,
        type: controller.items[index].type, textController: textControllers[index],
        // selectItems: controller.items[index].selectItems,
      ),
      shrinkWrap: true,
      separatorBuilder: (context, index) => const Gap(17),
    );
  }

  Widget buttonSubmit(BuildContext context) {
    return ElevatedButton(
      onPressed: () async {
        // Prepare data to be saved
        Map<String, dynamic> data = {};
        for (int i = 0; i < controller.items.length; i++) {
          data[controller.items[i].label] = textControllers[i].text;

          textControllers[i].clear();
        }

        // Debug: print data
        print("Data to be added: $data");

        try {
          // Add a new data
          await firestoreMasukan.addMasukan(data);
          // Debug: print success message
          print("Data added successfully");
          Navigator.pushNamed(context, '/masukan/success');
        } catch (e) {
          // Debug: print error
          print("Failed to add data: $e");
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
}
