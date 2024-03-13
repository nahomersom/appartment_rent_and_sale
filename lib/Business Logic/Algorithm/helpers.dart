// String getInterest(bankName){
//     var bankInterest;
//     banks.forEach((e) => {
//      bankName == e['name'] ? bankInterest = e['interest'] : '0',
//     });
//     return bankInterest.toString();
//   }

import 'dart:io';

import 'package:flutter_image_compress/flutter_image_compress.dart';
import 'package:path/path.dart' as p;

class Helpers {
  bool validateEmail(String email) {
    // Regular expression for email validation
    final emailRegex =
        RegExp(r'^[\w-]+(\.[\w-]+)*@([a-zA-Z0-9-]+\.)+[a-zA-Z]{2,7}$');

    return emailRegex.hasMatch(email);
  }

  bool validatePassword(String password) {
    return password.length >= 6;
  }

  Future<File?> compressFile(File file) async {
    final filePath = file.absolute.path;

    // Create output file path
    // eg:- "Volume/VM/abcd_out.jpeg"

    final extension = p.extension(filePath);
    final lastIndex = filePath.lastIndexOf(extension);
    final splitted = filePath.substring(0, (lastIndex));
    final outPath = "${splitted}_out${filePath.substring(lastIndex)}";
    var result = await FlutterImageCompress.compressAndGetFile(
      file.absolute.path,
      outPath,
      quality: 50,
    );
    if (result != null) {
      // print(result.lengthSync());

      print(file.lengthSync());
      File compressedFile = File(result.path);
      return compressedFile;
    }

    return null;
  }
}
