import 'package:flutter/material.dart';
import 'package:flutter_app/shared/theme.dart';
import 'package:gap/gap.dart';

class CustomListTileSideBorder extends StatelessWidget {
  const CustomListTileSideBorder({super.key, required this.masukan, required this.timeStamp});

  final String masukan;
  final String timeStamp;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          border: Border(
              left: BorderSide(
                  width: 5, color: kPrimaryColor))),
      child: ListTile(
        contentPadding:
        const EdgeInsets.only(left: 20, right: 10),
        minVerticalPadding: 5,
        title: Padding(
          padding: const EdgeInsets.only(bottom: 8),
          child: Text(
            masukan,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        subtitle: Row(
          children: [
            const Icon(
              Icons.calendar_month,
              size: 12,
            ),
            const Gap(7),
            Text(
              timeStamp,
              style: greyTextStyle.copyWith(fontSize: 12),
            )
          ],
        ),
      ),
    );
  }
}
