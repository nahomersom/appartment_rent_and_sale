class SignupModel {
  final String? FirstName;
  final String? LastName;
  final String Email;
  final String Password;

  SignupModel(
      {this.FirstName,
      this.LastName,
      required this.Email,
      required this.Password});
}
