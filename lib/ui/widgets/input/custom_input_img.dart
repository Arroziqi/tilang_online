import 'package:flutter/material.dart';
import 'package:flutter_app/shared/theme.dart';
import 'package:gap/gap.dart';

class CustomInputImg extends StatelessWidget {
  const CustomInputImg({super.key, required this.onPressed, required this.text});

  final Function() onPressed;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: ElevatedButton(onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.symmetric(vertical: defaultMargin),
            backgroundColor: Color(0xffFFB1B1),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
              side: BorderSide(
                color: Colors.red,
              ),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/img/icons/awan.png', width: 40,),
              Gap(4),
              Text(text, style: redTextStyle.copyWith(fontSize: 14),),
            ],
          ),
        ),),
      ],
    );
  }
}
