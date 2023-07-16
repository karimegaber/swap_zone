import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:swap_zone/components/widgets/horizontal_app_logo.dart';
import 'package:swap_zone/components/widgets/text_widget.dart';
import 'package:swap_zone/resources/colors_manager.dart';
import 'package:swap_zone/resources/fonts_manager.dart';
import 'package:swap_zone/resources/strings_manager.dart';
import 'package:swap_zone/resources/styles_manager.dart';
import 'package:swap_zone/resources/values_manager.dart';

class SignInHeadingWidget extends StatelessWidget {
  const SignInHeadingWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const HorizontalAppLogo(),
        SizedBox(height: AppSize.s20.h),
        Column(
          children: [
            TextWidget(
              text: StringsManager.signInTitle,
              style: getBoldStyle(
                color: ColorsManager.black,
                fontSize: FontSize.fs18.sp,
              ),
            ),
            TextWidget(
              text: StringsManager.signInMessage,
              style: getMediumStyle(
                color: ColorsManager.black,
                fontSize: FontSize.fs14.sp,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
