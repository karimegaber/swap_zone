import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:swap_zone/components/widgets/app_name.dart';
import 'package:swap_zone/resources/assets_manager.dart';
import 'package:swap_zone/resources/values_manager.dart';

class VerticalAppLogo extends StatelessWidget {
  const VerticalAppLogo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const AppName(),
        Image.asset(
          AssetsManager.imageGetter(imageName: 'app_logo'),
          height: AppSize.s100.h,
          width: AppSize.s100.w,
        ),
      ],
    );
  }
}
