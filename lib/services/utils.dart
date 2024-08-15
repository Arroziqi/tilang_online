import 'dart:io';

import 'package:url_launcher/url_launcher.dart';
import 'package:image_picker/image_picker.dart';

String generateOrderId(String id){
  final timestamp = DateTime.now().millisecondsSinceEpoch.toString();
  return '$id-$timestamp';
}

// image picker
ImagePicker _imagePicker = ImagePicker();
Future<File?> pickImageFromGallery() async {
  final XFile? image = await _imagePicker.pickImage(source: ImageSource.gallery);

  return File(image!.path);
}

// url launcher
Future<void> _launchUrl(url) async{
  if(!await launchUrl(url)){
    throw Exception('Could not launch $url');
  }
}