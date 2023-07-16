import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:swap_zone/resources/assets_manager.dart';
import 'package:swap_zone/resources/colors_manager.dart';
import 'package:swap_zone/resources/values_manager.dart';

class SocialMediaAuthItem extends StatelessWidget {
  final String iconName;
  final VoidCallback onPressed;

  const SocialMediaAuthItem({
    super.key,
    required this.iconName,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: AppSize.s50.w,
        height: AppSize.s50.h,
        padding: EdgeInsets.all(AppPadding.p8.r),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(AppSize.s12.r),
          color: ColorsManager.lightGrey,
        ),
        child: SvgPicture.asset(
          AssetsManager.iconGetter(iconName: iconName),
          width: AppSize.s50.w,
          height: AppSize.s50.h,
        ),
      ),
    );
  }
}
