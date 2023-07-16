import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:swap_zone/components/widgets/app_name.dart';
import 'package:swap_zone/resources/assets_manager.dart';
import 'package:swap_zone/resources/values_manager.dart';

class HorizontalAppLogo extends StatelessWidget {
  const HorizontalAppLogo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          AssetsManager.imageGetter(imageName: 'app_logo'),
          height: AppSize.s50.h,
          width: AppSize.s50.w,
        ),
        SizedBox(width: AppSize.s4.w),
        const AppName(),
      ],
    );
  }
}
