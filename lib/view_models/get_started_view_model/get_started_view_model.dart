import 'package:flutter/material.dart';
import 'package:swap_zone/resources/routes_manager.dart';

class GetStartedViewModel {
  void onPressSignIn({required BuildContext context}) {
    Navigator.of(context).pushReplacementNamed(Routes.signInScreenRoute);
  }

  void onPressCreateNewAccount({required BuildContext context}) {
    Navigator.of(context).pushNamed(Routes.signInScreenRoute);
  }

  void onPressContinueAsGuest({required BuildContext context}) {}
}
