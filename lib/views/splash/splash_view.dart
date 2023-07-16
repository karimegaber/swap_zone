import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:swap_zone/components/widgets/app_name.dart';
import 'package:swap_zone/components/widgets/can_exit.dart';
import 'package:swap_zone/components/widgets/loading_indicator.dart';
import 'package:swap_zone/resources/values_manager.dart';
import 'package:swap_zone/view_models/splash_view_model/splash_view_model.dart';

class SplashView extends StatefulWidget {
  final SplashViewModel viewModel;

  const SplashView({super.key, required this.viewModel});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();

    widget.viewModel.start(
      context: context,
    );
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CanExit(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              height: AppSize.s150.h,
            ),

            // App Name
            const AppName(),

            SizedBox(
              height: AppSize.s150.h,
            ),

            // App Logo
            const LoadingIndicator(),
          ],
        ),
      ),
    );
  }
}
