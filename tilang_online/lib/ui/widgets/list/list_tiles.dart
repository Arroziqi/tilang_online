import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ListTiles extends StatelessWidget {
  const ListTiles(
      {super.key, this.gap = 0, required this.itemCount, required this.itemBuilder, this.padding});

  final Widget? Function(BuildContext, int) itemBuilder;
  final double gap;
  final int itemCount;
  final EdgeInsetsGeometry? padding;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: padding,
      shrinkWrap: true,
      physics: const ScrollPhysics(),
      itemBuilder: itemBuilder,
      separatorBuilder: (context, index) => Gap(gap),
      itemCount: itemCount,
    );
  }
}
