import 'package:flutter/material.dart';
import 'package:swap_zone/resources/constants_manager.dart';
import 'package:swap_zone/resources/routes_manager.dart';
import 'package:swap_zone/services/local/cache_helper.dart';

class SplashViewModel {
  // Start
  void start({
    required BuildContext context,
  }) {
    Future.delayed(
      const Duration(seconds: ConstantsManager.splashTimeWaitingInSeconds),
      () {
        CacheHelper.getData(key: ConstantsManager.onBoardingSkipped)
            .then((value) {
          if (value ?? false) {
            // User Skipped on boarding screen
            WidgetsBinding.instance.addPostFrameCallback((_) {
              Navigator.of(context)
                  .pushReplacementNamed(Routes.signInScreenRoute);
            });
          } else {
            // User is NEW!
            WidgetsBinding.instance.addPostFrameCallback((_) {
              Navigator.of(context)
                  .pushReplacementNamed(Routes.onBoardingScreenRoute);
            });
          }
        });
      },
    );
  }
}
