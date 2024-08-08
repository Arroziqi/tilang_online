import 'dart:io';

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