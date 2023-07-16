import 'package:flutter/material.dart';
import 'package:swap_zone/resources/routes_manager.dart';
import 'package:swap_zone/utils/mixins/auth_validation_mixin.dart';

class SignInViewModel with AuthValidationMixin {
  // Key
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  // Controllers
  late final TextEditingController emailAddressController;
  late final TextEditingController passwordController;

  bool passwordVisibility = true;

  void init() {
    emailAddressController = TextEditingController();
    passwordController = TextEditingController();
  }

  void dispose() {
    emailAddressController.dispose();
    passwordController.dispose();
  }

  void changePasswordVisibilityState() {
    passwordVisibility = !passwordVisibility;
  }

  void onPressCreateNewAccount({required BuildContext context}) {
    Navigator.of(context)
        .pushReplacementNamed(Routes.registerScreenRoute)
        .whenComplete(() => dispose());
  }

  void onPressForgotPassword({required BuildContext context}) {
    Navigator.of(context)
        .pushNamed(Routes.forgotPasswordScreenRoute)
        .whenComplete(() => dispose());
  }

  // Sign in process
  void onPressSignIn() {
    if (formKey.currentState!.validate()) {
      /// ToDo: use dispose() after completing signing in process.
    }
  }
}
