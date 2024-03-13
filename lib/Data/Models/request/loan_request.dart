class LoanRequestModel {
  final int loanAmount;
  final String reasonForLoan;
  final String loanPaymentPeriod;
  final String jobStatus;
  final String bank;
  final String branch;
  final String typeOfLoan;
  final String typesOfCollateral;
  final double monthlyPayment;
  final double interest;

  LoanRequestModel({
    required this.loanAmount,
    required this.reasonForLoan,
    required this.loanPaymentPeriod,
    required this.jobStatus,
    required this.bank,
    required this.branch,
    required this.typeOfLoan,
    required this.typesOfCollateral,
    required this.monthlyPayment,
    required this.interest,
  });

  Map<String, dynamic> toJson() {
    return {
      'loan_amount': loanAmount,
      'Reason_for_loan': reasonForLoan,
      'Loan_Payment_Period': loanPaymentPeriod,
      'Job_Status': jobStatus,
      'Bank': bank,
      'branch': branch,
      'Type_Of_Loan': typeOfLoan,
      'Types_of_Collateral': typesOfCollateral,
      'Monthly_payment': monthlyPayment,
      'interest': interest,
    };
  }
}
