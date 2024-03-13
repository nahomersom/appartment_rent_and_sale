class BankLogo {
  final String public_id;
  final String url;

  BankLogo(this.public_id, this.url);

  factory BankLogo.fromJson(Map<String, dynamic> json) {
    return BankLogo(
      json['public_id'],
      json['url'],
    );
  }
}
