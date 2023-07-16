import 'package:flutter/material.dart';
import 'package:swap_zone/resources/routes_manager.dart';
import 'package:swap_zone/utils/mixins/auth_validation_mixin.dart';
import 'package:swap_zone/utils/mixins/empty_field_validation_mixin.dart';

class RegisterViewModel with AuthValidationMixin, EmptyFieldValidationMixin {
  // Key
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  // Controllers
  final TextEditingController fullNameController = TextEditingController();
  final TextEditingController emailAddressController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  bool passwordVisibility = true;

  void changePasswordVisibilityState() {
    passwordVisibility = !passwordVisibility;
  }

  void onPressSignInNow({required BuildContext context}) {
    Navigator.of(context).pushReplacementNamed(Routes.signInScreenRoute);
  }

  void onPressCreateNewAccount() {
    if (formKey.currentState!.validate()) {

    }
  }
}
