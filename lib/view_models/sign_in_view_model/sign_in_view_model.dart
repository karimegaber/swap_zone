import 'package:flutter/material.dart';
import 'package:swap_zone/resources/routes_manager.dart';
import 'package:swap_zone/utils/mixins/auth_validation_mixin.dart';

class SignInViewModel with AuthValidationMixin {
  // Key
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  // Controllers
  final TextEditingController emailAddressController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  bool passwordVisibility = true;

  void changePasswordVisibilityState() {
    passwordVisibility = !passwordVisibility;
  }

  void onPressCreateNewAccount({required BuildContext context}) {
    Navigator.of(context).pushReplacementNamed(Routes.registerScreenRoute);
  }

  // Sign in process
  void onPressSignIn() {
    if (formKey.currentState!.validate()) {

    }
  }
}
