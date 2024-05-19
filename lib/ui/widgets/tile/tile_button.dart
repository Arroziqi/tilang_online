import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_app/ui/widgets/button/button_ring.dart';

class TileButton extends StatelessWidget {
  const TileButton({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          'assets/img/img_tile.png',
        ),
        Positioned(
          bottom: 17,
          right: 25,
          child: ButtonRing(text: text, onPressed: () {}),
        ),
      ],
    );
  }
}
