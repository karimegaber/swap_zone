import 'package:flutter/material.dart';
import 'package:swap_zone/resources/strings_manager.dart';
import 'package:swap_zone/views/get_started/get_started_view.dart';
import 'package:swap_zone/views/on_boarding/on_boarding_view.dart';
import 'package:swap_zone/views/splash/splash_view.dart';

class Routes {
  static const String splashScreenRoute = '/splash';
  static const String onBoardingScreenRoute = '/on_boarding';
  static const String getStartedScreenRoute = '/get_started';
}

class RoutesGenerator {
  static Route<dynamic> getRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.splashScreenRoute:
        return MaterialPageRoute(
          builder: (_) => const SplashView(),
        );
      case Routes.onBoardingScreenRoute:
        return MaterialPageRoute(
          builder: (_) => const OnBoardingView(),
        );
      case Routes.getStartedScreenRoute:
        return MaterialPageRoute(
          builder: (_) => const GetStartedView(),
        );

      default:
        return undefinedRoute();
    }
  }

  // When a navigation error happens
  static Route<dynamic> undefinedRoute() => MaterialPageRoute(
        builder: (_) => Scaffold(
          appBar: AppBar(
            title: const Text(StringsManager.noRouteFoundErrorTitle),
          ),
          body: const Center(
            child: Text(StringsManager.noRouteFoundErrorMessage),
          ),
        ),
      );
}
