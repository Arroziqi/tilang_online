import 'package:flutter/cupertino.dart';
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
                  TextButton(onPressed: () {}, child: Icon(Icons.close)),
                  TextButton(
                      onPressed: () {}, child: Icon(Icons.ios_share_outlined))
                ],
              ),
              Gap(29),
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(24)),
                padding: EdgeInsets.all(24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/img/icons/done-2.png',
                      width: 56,
                      height: 56,
                    ),
                    Gap(16),
                    Text(
                      'Payment Success!',
                      style: blackTextStyle.copyWith(
                          fontWeight: regular, fontSize: 16),
                    ),
                    Gap(8),
                    Text(
                      'IDR $denda',
                      style: blackTextStyle.copyWith(
                          fontWeight: semiBold, fontSize: 24),
                    ),
                    Gap(32),
                    Divider(
                      color: Colors.grey,
                    ),
                    Gap(32),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Ref Number',
                          style: greyTextStyle.copyWith(fontSize: 13),
                        ),
                        Text('$refNumber',
                            style: blackTextStyle.copyWith(
                                fontSize: 13, fontWeight: medium)),
                      ],
                    ),
                    Gap(14),
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
                    Gap(14),
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
                    Gap(14),
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
                    Gap(14),
                    Divider(
                      color: Colors.grey,
                    ),
                    Gap(14),
                    Gap(14),
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
                    Gap(14),
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
          Column(
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
      backgroundColor: Color(0xff707070),
      body: buildContent(context),
    ));
  }
}
