import 'dart:convert';
import 'dart:io';

import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';

class ImageToBase64 {
  static Future pickImage() async {
    try {
      final XFile? image =
          await ImagePicker().pickImage(source: ImageSource.gallery);
      if (image == null) return;
      final imageTemp = File(image.path).readAsBytesSync();
      return "data:image/png;base64,${base64Encode(imageTemp)}";
    } on PlatformException catch (e) {
      return e;
    }
  }
}
