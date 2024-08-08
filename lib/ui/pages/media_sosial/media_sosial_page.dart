import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_app/services/firestore.dart';
import 'package:flutter_app/services/utils.dart';
import 'package:flutter_app/ui/widgets/bar/appBar/custom_back_navigation_appbar.dart';
import 'package:gap/gap.dart';

final firestore = Firestore();

class MediaSosialPage extends StatefulWidget {
  const MediaSosialPage({super.key});

  @override
  State<MediaSosialPage> createState() => _MediaSosialPageState();
}

class _MediaSosialPageState extends State<MediaSosialPage> {
  File? selectedImage;
  Future<String>? downloadurl;
  Future<String>? imageUrl;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:
            customBackNavigationAppBar(context: context, title: 'Media Sosial'),
        body: Column(
          children: [
            ElevatedButton(
                onPressed: () async {
                  File? image;
                  image = await pickImageFromGallery();
                  setState(() {
                    selectedImage = image!;
                  });
                },
                child: const Text('pick Image from gallery')),
            const Gap(24),
            ElevatedButton(
                onPressed: () async {
                  downloadurl = firestore.uploadImage(selectedImage!);
                  setState(() {
                    imageUrl = downloadurl;
                  });
                },
                child: const Text('upload image')),
            const Gap(24),
            imageUrl != null
                ? FutureBuilder(
                    future: downloadurl,
                    builder: (context, snapshot) {
                      return Image.network(snapshot.data!);
                    })
                : const Text('please select an image!'),
          ],
        ));
  }
}
