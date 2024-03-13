enum AuthResultStatus {
  successful,
  emailAlreadyExists,
  weakPassword,
  wrongPassword,
  duplicateEmail,
  invalidEmail,
  userNotFound,
  unverifiedEmail,
  userDisabled,
  operationNotAllowed,
  tooManyRequests,
  invalidEmailOrPhoneNumber,
  undefined,
}

class AuthExceptionHandler {
  static handleException(e) {
    print('----------------------handleException -------');
    print(e.code);
    var status;
    switch (e.code) {
      case "invalid-credential":
        status = AuthResultStatus.invalidEmailOrPhoneNumber;
        break;
      case "invalid-email":
        status = AuthResultStatus.invalidEmail;
        break;
      case "wrong-password":
        status = AuthResultStatus.wrongPassword;
        break;
      case "invalid-email-verified":
        status = AuthResultStatus.unverifiedEmail;
        break;
      case "user-not-found":
        status = AuthResultStatus.userNotFound;
        break;
      case "ERROR_USER_DISABLED":
        status = AuthResultStatus.userDisabled;
        break;
      case "too-many-requests":
        status = AuthResultStatus.tooManyRequests;
        break;
      case "ERROR_OPERATION_NOT_ALLOWED":
        status = AuthResultStatus.operationNotAllowed;
        break;
      case "ERROR_EMAIL_ALREADY_IN_USE":
        status = AuthResultStatus.emailAlreadyExists;
        break;
      case "weak-password":
        status = AuthResultStatus.weakPassword;
        break;
      case "email-already-in-use":
        status = AuthResultStatus.duplicateEmail;
        break;
      //
      default:
        status = AuthResultStatus.undefined;
    }
    return generateExceptionMessage(status);
  }

  ///
  /// Accepts AuthExceptionHandler.errorType
  ///
  static generateExceptionMessage(exceptionCode) {
    String errorMessage;
    switch (exceptionCode) {
      case AuthResultStatus.invalidEmailOrPhoneNumber:
        errorMessage = "Invalid email or phone number.";
        break;
      case AuthResultStatus.invalidEmail:
        errorMessage = "Invalid email address.";
        break;
      case AuthResultStatus.wrongPassword:
        errorMessage = "Your password is wrong.";
        break;
      case AuthResultStatus.userNotFound:
        errorMessage = "User with this email doesn't exist.";
        break;
      case AuthResultStatus.userDisabled:
        errorMessage = "User with this email has been disabled.";
        break;
      case AuthResultStatus.tooManyRequests:
        errorMessage = "Too many requests. Try again later.";
        break;
      case AuthResultStatus.operationNotAllowed:
        errorMessage = "Signing in with Email and Password is not enabled.";
        break;
      case AuthResultStatus.emailAlreadyExists:
        errorMessage =
            "The email has already been registered. Please login or reset your password.";
        break;
      case AuthResultStatus.unverifiedEmail:
        errorMessage = "Unverified Email, please verify your email.";
        break;
      case AuthResultStatus.weakPassword:
        errorMessage = "The password provided is too weak.";
        break;
      case AuthResultStatus.duplicateEmail:
        errorMessage = "The account already exists for that email.";
        break;
      default:
        errorMessage = "Unable to connect with the server.";
    }

    return errorMessage;
  }
}
