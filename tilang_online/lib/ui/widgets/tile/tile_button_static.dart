import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_app/ui/widgets/button/button_ring.dart';

class TileButton extends StatelessWidget {
  const TileButton({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 360,
      height: 144,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Image.asset('assets/img/img_tile.png',),
          Container( width: 360, height: 144,alignment: Alignment.bottomRight, padding: const EdgeInsets.only(bottom: 25, right: 40), child: ButtonRing(text: text, onPressed: () {}),),
        ],
      ),
    );
  }
}
