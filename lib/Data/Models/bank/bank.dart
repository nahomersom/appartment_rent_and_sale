import 'dart:io';
import 'package:equatable/equatable.dart';

import 'bank_info.dart';

class Bank extends Equatable {
  final bool success;
  final List<BankInfo> banks;
  const Bank({required this.success, required this.banks});
  @override
  List<Object?> get props => [success, banks];
}
