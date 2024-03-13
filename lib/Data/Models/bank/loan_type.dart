class LoanType {
  final String type;
  final double rate;
  final String _id;

  LoanType(this.type, this.rate, this._id);

  factory LoanType.fromJson(Map<String, dynamic> json) {
    return LoanType(
      json['type'],
      json['rate'],
      json['_id'],
    );
  }
}
