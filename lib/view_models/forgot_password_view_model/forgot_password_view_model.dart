import 'package:flutter/material.dart';
import 'package:swap_zone/resources/routes_manager.dart';
import 'package:swap_zone/utils/mixins/auth_validation_mixin.dart';

class ForgotPasswordViewModel with AuthValidationMixin {
  // Key
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  // Controllers
  late final TextEditingController emailAddressController;

  void init() {
    emailAddressController = TextEditingController();
  }

  void dispose() {
    emailAddressController.dispose();
  }

  void onPressBackIcon({required BuildContext context}) {
    Navigator.of(context)
        .pushReplacementNamed(Routes.signInScreenRoute)
        .whenComplete(() => dispose());
  }

  onPressSendInstructionsEmail() {
    if (formKey.currentState!.validate()) {}
  }
}
