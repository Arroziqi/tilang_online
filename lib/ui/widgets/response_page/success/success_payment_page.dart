import 'package:flutter/material.dart';
import 'package:flutter_app/shared/theme.dart';
import 'package:gap/gap.dart';

class SuccessPaymentPage extends StatelessWidget {
  const SuccessPaymentPage(
      {super.key,
      required this.denda,
      required this.refNumber,
      required this.paymentTime,
      required this.paymentMethod,
      required this.senderName,
      required this.amount});

  final String denda;
  final String refNumber;
  final String paymentTime;
  final String paymentMethod;
  final String senderName;
  final String amount;

  Widget buildContent(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(defaultMargin),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(onPressed: () {}, child: const Icon(Icons.close)),
                  TextButton(
                      onPressed: () {},
                      child: const Icon(Icons.ios_share_outlined))
                ],
              ),
              const Gap(29),
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(24)),
                padding: const EdgeInsets.all(24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/img/icons/done-2.png',
                      width: 56,
                      height: 56,
                    ),
                    const Gap(16),
                    Text(
                      'Payment Success!',
                      style: blackTextStyle.copyWith(
                          fontWeight: regular, fontSize: 16),
                    ),
                    const Gap(8),
                    Text(
                      'IDR $denda',
                      style: blackTextStyle.copyWith(
                          fontWeight: semiBold, fontSize: 24),
                    ),
                    const Gap(32),
                    const Divider(
                      color: Colors.grey,
                    ),
                    const Gap(32),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Ref Number',
                          style: greyTextStyle.copyWith(fontSize: 13),
                        ),
                        Text(refNumber,
                            style: blackTextStyle.copyWith(
                                fontSize: 13, fontWeight: medium)),
                      ],
                    ),
                    const Gap(14),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Payment Time',
                          style: greyTextStyle.copyWith(fontSize: 13),
                        ),
                        Text(paymentTime,
                            style: blackTextStyle.copyWith(
                                fontSize: 13, fontWeight: medium)),
                      ],
                    ),
                    const Gap(14),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Payment Method',
                          style: greyTextStyle.copyWith(fontSize: 13),
                        ),
                        Text(paymentMethod,
                            style: blackTextStyle.copyWith(
                                fontSize: 13, fontWeight: medium)),
                      ],
                    ),
                    const Gap(14),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Sender Name',
                          style: greyTextStyle.copyWith(fontSize: 13),
                        ),
                        Text(senderName,
                            style: blackTextStyle.copyWith(
                                fontSize: 13, fontWeight: medium)),
                      ],
                    ),
                    const Gap(14),
                    const Divider(
                      color: Colors.grey,
                    ),
                    const Gap(14),
                    const Gap(14),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Amount',
                          style: greyTextStyle.copyWith(fontSize: 13),
                        ),
                        Text('IDR $amount',
                            style: blackTextStyle.copyWith(
                                fontSize: 13, fontWeight: medium)),
                      ],
                    ),
                    const Gap(14),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Admin Fee',
                          style: greyTextStyle.copyWith(fontSize: 13),
                        ),
                        Text(
                          'IDR 193.00',
                          style: blackTextStyle.copyWith(
                              fontSize: 13, fontWeight: medium),
                        )
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
          const Column(
            children: [],
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: const Color(0xff707070),
      body: buildContent(context),
    ));
  }
}
