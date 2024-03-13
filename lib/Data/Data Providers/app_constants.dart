class AppConstants {
  static const String appName = 'E-BIDIR';
  static const String baseUrl = 'https://e-bidir.com/api/v1';

  static const String loginUrl = '/login';
  static const String getBanks = '/admin/banks';
  static const String myLoan = '/myloan';
  static const String getBranches = '/bankbranches';

  static const String userProfile = '/user';
  static const String addLoan = '/loan/add';
  static const String personalProfile = '/me/personal';
  static const String economicInfo = '/me/economic';
  static const String token = "token";
  static const String buildings = "/buildings";
  static const String cars = "/mycars";
  static const String addBuilding = "/building/add";
  static const String addVehicle = "/car/add";
  static const String changePasswordUrl = "/changepass";
  static const double tax = 18.85;
  static const double deliveryFee = 1.99;
  static const List<String> allowedFileExtenstions = [
    "jpg",
    "jpeg",
    "png",
    "gif",
    "bmp",
    "tiff",
    "tif",
    "svg",
    "webp",
    "heic",
    "heif",
    "ico",
    "psd",
    "doc",
    "docx",
    "pdf",
  ];
}
