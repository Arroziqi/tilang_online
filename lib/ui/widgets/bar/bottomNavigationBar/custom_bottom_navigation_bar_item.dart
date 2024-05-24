import 'package:flutter/material.dart';
import 'package:flutter_app/cubit/page_cubit.dart';
import 'package:flutter_app/shared/theme.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomBottomNavigationBarItem extends StatelessWidget {
  const CustomBottomNavigationBarItem({
    super.key,
    required this.imageUrl,
    required this.text,
    required this.index,
  });

  final String imageUrl;
  final String text;
  final int index;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.read<PageCubit>().setPage(index);
      },
      child: SizedBox(
        width: 68,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 5,
              color: context.read<PageCubit>().state == index
                  ? Colors.black
                  : Colors.transparent,
            ),
            Image.asset(
              imageUrl,
              width: 36,
              height: 36,
            ),
            Text(
              text,
              style: blackTextStyle.copyWith(
                fontWeight: regular,
                fontSize: 13,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
