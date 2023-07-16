import 'package:flutter/material.dart';
import 'package:swap_zone/resources/routes_manager.dart';
import 'package:swap_zone/utils/mixins/auth_validation_mixin.dart';
import 'package:swap_zone/utils/mixins/empty_field_validation_mixin.dart';

class RegisterViewModel with AuthValidationMixin, EmptyFieldValidationMixin {
  // Key
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  // Controllers
  late final TextEditingController fullNameController;
  late final TextEditingController emailAddressController;
  late final TextEditingController passwordController;

  bool passwordVisibility = true;

  void init() {
    fullNameController = TextEditingController();
    emailAddressController = TextEditingController();
    passwordController = TextEditingController();
  }

  void dispose() {
    fullNameController.dispose();
    emailAddressController.dispose();
    passwordController.dispose();
  }

  void changePasswordVisibilityState() {
    passwordVisibility = !passwordVisibility;
  }

  void onPressSignInNow({required BuildContext context}) {
    Navigator.of(context)
        .pushReplacementNamed(Routes.signInScreenRoute)
        .whenComplete(() => dispose());
  }

  void onPressCreateNewAccount() {
    if (formKey.currentState!.validate()) {
      /// ToDo: use dispose() after completing registration in process.
    }
  }
}
