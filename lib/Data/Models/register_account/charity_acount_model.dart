import 'dart:io';

class CharityAccountModel {
  final String addressName;
  final String city;
  final String state;
  final String organizationName;
  final File? credentialFile;
  final List<File>? profileImage;

  CharityAccountModel(
      {this.profileImage,
      required this.addressName,
      required this.city,
      required this.state,
      required this.organizationName,
      this.credentialFile});
}
