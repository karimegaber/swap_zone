import 'package:flutter/material.dart';
import 'package:swap_zone/resources/strings_manager.dart';
import 'package:swap_zone/view_models/forgot_password_view_model/forgot_password_view_model.dart';
import 'package:swap_zone/view_models/get_started_view_model/get_started_view_model.dart';
import 'package:swap_zone/view_models/on_boarding_view_model/on_boarding_view_model.dart';
import 'package:swap_zone/view_models/register_view_model/register_view_model.dart';
import 'package:swap_zone/view_models/sign_in_view_model/sign_in_view_model.dart';
import 'package:swap_zone/view_models/splash_view_model/splash_view_model.dart';
import 'package:swap_zone/views/forgot_password/forgot_password_view.dart';
import 'package:swap_zone/views/get_started/get_started_view.dart';
import 'package:swap_zone/views/on_boarding/on_boarding_view.dart';
import 'package:swap_zone/views/register/register_view.dart';
import 'package:swap_zone/views/sign_in/sign_in_view.dart';
import 'package:swap_zone/views/splash/splash_view.dart';

class Routes {
  // Getting Started Screens Routes
  static const String splashScreenRoute = '/splash';
  static const String onBoardingScreenRoute = '/on_boarding';
  static const String getStartedScreenRoute = '/get_started';

  // Auth Screens Routes
  static const String signInScreenRoute = '/sign_in';
  static const String registerScreenRoute = '/register';
  static const String forgotPasswordScreenRoute = '/forgot_password';
}

class RoutesGenerator {
  static Route<dynamic> getRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.splashScreenRoute:
        return MaterialPageRoute(
          builder: (_) => SplashView(
            viewModel: SplashViewModel(),
          ),
        );
      case Routes.onBoardingScreenRoute:
        return MaterialPageRoute(
          builder: (_) => OnBoardingView(
            viewModel: OnBoardingViewModel(),
          ),
        );
      case Routes.getStartedScreenRoute:
        return MaterialPageRoute(
          builder: (_) => GetStartedView(
            viewModel: GetStartedViewModel(),
          ),
        );
      case Routes.signInScreenRoute:
        return MaterialPageRoute(
          builder: (_) => SignInView(
            viewModel: SignInViewModel()..init(),
          ),
        );
      case Routes.registerScreenRoute:
        return MaterialPageRoute(
          builder: (_) => RegisterView(
            viewModel: RegisterViewModel()..init(),
          ),
        );
      case Routes.forgotPasswordScreenRoute:
        return MaterialPageRoute(
          builder: (_) => ForgotPasswordView(
            viewModel: ForgotPasswordViewModel()..init(),
          ),
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
