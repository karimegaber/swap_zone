import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:swap_zone/components/widgets/loading_indicator.dart';
import 'package:swap_zone/resources/colors_manager.dart';
import 'package:swap_zone/resources/values_manager.dart';

showLoadingIndicator({
  required BuildContext context,
}) {
  showDialog(
    context: context,
    builder: (context) => SimpleDialog(
      insetPadding: EdgeInsets.symmetric(horizontal: AppSize.s130.w),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppSize.s12.r),
      ),
      backgroundColor: ColorsManager.lightGrey,
      children: const [
        LoadingIndicator(),
      ],
    ),
  );
}
