import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:swap_zone/components/widgets/text_widget.dart';
import 'package:swap_zone/resources/colors_manager.dart';
import 'package:swap_zone/resources/fonts_manager.dart';
import 'package:swap_zone/resources/styles_manager.dart';
import 'package:swap_zone/resources/values_manager.dart';

class Button extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const Button({super.key, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: ColorsManager.purple,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppSize.s12.r),
        ),
        padding: EdgeInsets.symmetric(horizontal: AppPadding.p25.w),
      ),
      onPressed: onPressed,
      child: TextWidget(
        text: text,
        style: getBoldStyle(
          color: ColorsManager.lightGrey,
          fontSize: FontSize.fs16.sp,
        ),
      ),
    );
  }
}
