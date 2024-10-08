import 'package:flutter/cupertino.dart';
import 'package:flutter_app/shared/theme.dart';
// import 'package:flutter_app/ui/widgets/input/input_select.dart';
import 'package:flutter_app/ui/widgets/input/input_text.dart';
import 'package:flutter_app/ui/widgets/input/input_text_area.dart';
import 'package:gap/gap.dart';

class Input extends StatelessWidget {
  const Input({super.key, required this.label, required this.hintText, required this.type, this.controller});

  final String label;
  final String hintText;
  final String type;
  final TextEditingController? controller;


  Widget getInput(String type, String hintText){
    switch (type){
      case 'longText':
        return InputTextArea(hintText: hintText, controller: controller,);
      case 'select':
        return InputText(hintText: hintText, controller: controller,);
      default:
        return InputText(hintText: hintText, controller: controller,);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: blackTextStyle.copyWith(fontSize: 16, fontWeight: bold,),),
        const Gap(7),
        getInput(type, hintText),
      ],
    );
  }
}
