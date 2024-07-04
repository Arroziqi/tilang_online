import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_app/services/firestore_pelanggaran.dart';
import 'package:flutter_app/services/utils.dart';
import 'package:flutter_app/ui/widgets/bar/appBar/custom_back_navigation_appbar.dart';
import 'package:flutter_app/ui/widgets/button/button_primary.dart';
import 'package:flutter_app/ui/widgets/response_page/success/success_payment_page.dart';
import 'package:gap/gap.dart';
import 'package:http/http.dart' as http;
import 'package:webview_flutter/webview_flutter.dart';

import '../../../../shared/theme.dart';

class NotifikasiPelanggaranView extends StatefulWidget {
  const NotifikasiPelanggaranView(
      {super.key,
      required this.tanggal,
      required this.jalan,
      required this.kesalahan,
      required this.denda,
      required this.id});

  final String tanggal;
  final String jalan;
  final String kesalahan;
  final int denda;
  final String id;

  @override
  State<NotifikasiPelanggaranView> createState() =>
      _NotifikasiPelanggaranViewState();
}

class _NotifikasiPelanggaranViewState extends State<NotifikasiPelanggaranView> {
  String _paymentUrl = "";
  WebViewController? controller;

  FirestorePelanggaran firestorePelanggaran = FirestorePelanggaran();

  PreferredSizeWidget buildAppBar(BuildContext context) {
    return customBackNavigationAppBar(
      context: context,
      title: "Pelanggaran Anda",
    );
  }

  Widget buildDescription() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Pelanggaran',
          style: blackTextStyle.copyWith(
            fontSize: 20,
            fontWeight: semiBold,
          ),
        ),
        Text(
          'Pelanggaran yang Anda lakukan adalah ${widget.kesalahan}',
          style: blackTextStyle.copyWith(
            fontSize: 15,
          ),
        ),
      ],
    );
  }

  Widget buildImage(String imageUrl) {
    return Image.asset(
      imageUrl,
      height: 221,
      width: 230,
    );
  }

  Future<void> bayarDenda() async {
    try {
      final String orderId = generateOrderId(widget.id);

      final response = await http.post(
        Uri.parse('http://10.0.2.2:3000/api/pembayaran'),
        headers: {
          'Content-Type': 'application/json',
        },
        body: jsonEncode({
          "id": orderId,
          "denda": widget.denda,
        }),
      );
      print('response from node.js: ${response.body}');

      if (response.statusCode == 200) {
        final responseBody = jsonDecode(response.body);
        if (responseBody['success']) {
          setState(() {
            _paymentUrl =
                'https://app.sandbox.midtrans.com/snap/v2/vtweb/${responseBody['token']}';
            print(_paymentUrl);

            controller = WebViewController()
              ..setJavaScriptMode(JavaScriptMode.unrestricted)
              ..setBackgroundColor(const Color(0x00000000))
              ..setNavigationDelegate(
                NavigationDelegate(
                  onProgress: (int progress) {
                    // Update loading bar.
                  },
                  onPageStarted: (String url) {},
                  onPageFinished: (String url) {},
                  onHttpError: (HttpResponseError error) {},
                  onWebResourceError: (WebResourceError error) {},
                  onNavigationRequest: (NavigationRequest request) {
                    if (request.url.startsWith('http://example.com')) {
                      firestorePelanggaran.updatePelanggaran(widget.id, true);
                      Navigator.pushNamed(context, '/home');
                    }
                    return NavigationDecision.navigate;
                  },
                ),
              )
              ..loadRequest(Uri.parse(_paymentUrl));
          });
        } else {
          print('Failed to get token: ${responseBody['token']}');
        }
      } else {
        print('Failed to post data: ${response.statusCode}');
      }
    } catch (e) {
      print('Error: $e');
    }
  }

  Widget buildButton(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 50),
      child: buttonPrimary(
        onPressed: bayarDenda,
        text: 'Bayar Denda',
      ),
    );
  }

  Widget buildContent(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: 33,
        left: defaultMargin,
        right: defaultMargin,
      ),
      child: ListView(
        children: [
          buildDescription(),
          const Gap(20),
          buildImage('assets/img/icons/helm.png'),
          const Gap(50),
          // notifikasiPelanggaranViewLists(),
          const Gap(43),
          buildButton(context),
          const Gap(50),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: _paymentUrl.isEmpty
          ? buildContent(context)
          : WebViewWidget(controller: controller!),
    );
  }
}
