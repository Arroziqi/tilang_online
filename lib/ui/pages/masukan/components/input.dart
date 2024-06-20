import 'package:flutter/cupertino.dart';
import 'package:flutter_app/shared/theme.dart';
// import 'package:flutter_app/ui/widgets/input/input_select.dart';
import 'package:flutter_app/ui/widgets/input/input_text.dart';
import 'package:gap/gap.dart';

class Input extends StatelessWidget {
  const Input({super.key, required this.label, required this.hintText, required this.type});

  final String label;
  final String hintText;
  final String type;
  // final List<Map?>? selectItems;

  Widget getInput(String type, String hintText){
    switch (type){
      case 'longText':
        return InputText(hintText: hintText,);
      case 'select':
        return InputText(hintText: hintText);
      default:
        return InputText(hintText: hintText,);
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
