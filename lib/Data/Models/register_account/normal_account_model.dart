import 'dart:io';

class NormalAccountModel {
  final String addressName;
  final String city;
  final String state;
  final String schoolName;
  final String education;
  final File? credentialFile;
  final File? profileImage;

  NormalAccountModel(
      {this.profileImage,
      required this.addressName,
      required this.city,
      required this.state,
      required this.schoolName,
      required this.education,
      this.credentialFile});
}
