import 'package:swap_zone/resources/strings_manager.dart';

mixin EmptyFieldValidationMixin {
  String? emptyFieldValidation(String? text) {
    if (text == null || text.isEmpty) {
      return StringsManager.emptyFieldError;
    }
    return null;
  }
}
