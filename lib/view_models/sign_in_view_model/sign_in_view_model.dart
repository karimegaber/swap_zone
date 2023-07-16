import 'package:flutter/material.dart';
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

  // Sign in process
  void onPressSignIn() {
    if (formKey.currentState!.validate()) {
      print('Tmam');
    }
  }
}
