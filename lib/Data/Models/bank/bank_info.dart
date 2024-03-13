import 'dart:io';

import 'loan_type.dart';

class BankInfo {
  final dynamic? logo;
  final String? _id;
  final String? bank_name;
  final String? bank_email;
  final String? bank_phoneNo;
  final String? role;
  final String? status;
  final String? createdAt;
  final int? __v;
  final List<LoanType>? loan_types; // Add a List<LoanType>? property

  BankInfo(
    this.logo,
    this._id,
    this.bank_name,
    this.bank_email,
    this.bank_phoneNo,
    this.role,
    this.status,
    this.createdAt,
    this.__v,
    this.loan_types, // Include the loan_types property in the constructor
  );

  factory BankInfo.fromJson(Map<String, dynamic> json) {
    // Parse the loan_types list from the JSON data
    final List<dynamic>? loanTypesJson = json['loan_types'];
    final List<LoanType>? loanTypes =
        loanTypesJson?.map((typeJson) => LoanType.fromJson(typeJson)).toList();

    return BankInfo(
      json['logo'],
      json['_id'],
      json['bank_name'],
      json['bank_email'],
      json['bank_phoneNo'],
      json['role'],
      json['status'],
      json['createdAt'],
      json['__v'],
      loanTypes, // Pass the loanTypes list to the BankInfo constructor
    );
  }
}
