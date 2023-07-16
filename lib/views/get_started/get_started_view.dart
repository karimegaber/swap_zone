import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:swap_zone/components/widgets/button.dart';
import 'package:swap_zone/components/widgets/can_exit.dart';
import 'package:swap_zone/components/widgets/text_widget.dart';
import 'package:swap_zone/components/widgets/vertical_app_logo.dart';
import 'package:swap_zone/resources/colors_manager.dart';
import 'package:swap_zone/resources/fonts_manager.dart';
import 'package:swap_zone/resources/strings_manager.dart';
import 'package:swap_zone/resources/styles_manager.dart';
import 'package:swap_zone/resources/values_manager.dart';
import 'package:swap_zone/view_models/get_started_view_model/get_started_view_model.dart';

class GetStartedView extends StatelessWidget {
  final GetStartedViewModel viewModel;

  const GetStartedView({super.key, required this.viewModel});


  @override
  Widget build(BuildContext context) {

    return CanExit(
      child: Scaffold(
        body: Container(
          padding: EdgeInsets.all(AppPadding.p12.r),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                ColorsManager.orange.withOpacity(0.7),
                ColorsManager.purple.withOpacity(0.7),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const SizedBox(),

              // App Logo
              CircleAvatar(
                backgroundColor: ColorsManager.black.withOpacity(0.1),
                radius: AppSize.s150.r,
                child: const VerticalAppLogo(),
              ),

              // Buttons
              Column(
                children: [
                  SizedBox(
                    width: double.infinity,
                    height: AppSize.s50.h,
                    child: Button(
                      text: StringsManager.signIn,
                      onPressed: () {
                        viewModel.onPressSignIn(context: context);
                      },
                    ),
                  ),
                  SizedBox(height: AppSize.s12.h),
                  SizedBox(
                    width: double.infinity,
                    height: AppSize.s50.h,
                    child: Button(
                      text: StringsManager.createNewAccount,
                      onPressed: () {
                        viewModel.onPressCreateNewAccount(context: context);
                      },
                    ),
                  ),
                  SizedBox(height: AppSize.s12.h),
                  TextButton(
                    child: TextWidget(
                      text: StringsManager.continueAsGuest,
                      style: getRegularStyle(
                        color: ColorsManager.black,
                        fontSize: FontSize.fs16.sp,
                      ),
                    ),
                    onPressed: () {
                      viewModel.onPressContinueAsGuest(context: context);
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
