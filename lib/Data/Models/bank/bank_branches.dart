class BankBranches {
  final String id;
  final String bankName;
  final String branchName;
  final String branchCode;
  final String branchEmail;
  final String branchPhoneNo;
  final String location;
  final String manager;
  final String role;
  final String status;
  final String createdAt;
  final int v;

  BankBranches({
    required this.id,
    required this.bankName,
    required this.branchName,
    required this.branchCode,
    required this.branchEmail,
    required this.branchPhoneNo,
    required this.location,
    required this.manager,
    required this.role,
    required this.status,
    required this.createdAt,
    required this.v,
  });

  factory BankBranches.fromJson(Map<String, dynamic> json) {
    return BankBranches(
      id: json['_id'],
      bankName: json['bank_name'],
      branchName: json['branch_name'],
      branchCode: json['branch_code'],
      branchEmail: json['branch_email'],
      branchPhoneNo: json['branch_phoneNo'],
      location: json['location'],
      manager: json['manager'],
      role: json['role'],
      status: json['status'],
      createdAt: json['createdAt'],
      v: json['__v'],
    );
  }
}
