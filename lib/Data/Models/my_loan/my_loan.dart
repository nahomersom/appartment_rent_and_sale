
import 'my_loan_info.dart';

class MyLoan {
  bool success;
  List<MyLoanInfo> mybloan;
  MyLoan({required this.success, required this.mybloan});
  factory MyLoan.fromJson(Map<String, dynamic> json) {
    return MyLoan(success: json['success'], mybloan: json['mybloan']);
  }
}
