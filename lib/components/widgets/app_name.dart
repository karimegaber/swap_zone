import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:swap_zone/resources/colors_manager.dart';
import 'package:swap_zone/resources/constants_manager.dart';
import 'package:swap_zone/resources/fonts_manager.dart';
import 'package:swap_zone/resources/styles_manager.dart';

class AppName extends StatelessWidget {
  const AppName({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: ConstantsManager.appFirstName,
        children: [
          TextSpan(
            text: ConstantsManager.appLastName,
            style: getBoldStyle(
              color: ColorsManager.orange,
              fontSize: FontSize.fs30.sp,
            ),
          ),
        ],
        style: getBoldStyle(
          color: ColorsManager.purple,
          fontSize: FontSize.fs30.sp,
        ),
      ),
    );
  }
}
