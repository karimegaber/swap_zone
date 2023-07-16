import 'package:email_validator/email_validator.dart';
import 'package:swap_zone/resources/strings_manager.dart';

mixin AuthValidationMixin {
  // Email address validation
  String? emailAddressValidation(String? email) {
    if (email != null && email.isNotEmpty) {
      if (!EmailValidator.validate(email)) {
        return StringsManager.wrongEmailAddressFormatError;
      }
    } else {
      return StringsManager.emptyFieldError;
    }
    return null;
  }

  // Password length validation
  String? passwordLengthValidation(String? password) {
    if (password != null && password.isNotEmpty) {
      if (password.length < 8) {
        return StringsManager.shortPasswordError;
      }
    } else {
      return StringsManager.emptyFieldError;
    }
    return null;
  }
}
