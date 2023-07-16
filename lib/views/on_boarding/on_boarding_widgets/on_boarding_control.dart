import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:swap_zone/components/widgets/button.dart';
import 'package:swap_zone/components/widgets/dots_indicator.dart';
import 'package:swap_zone/resources/strings_manager.dart';
import 'package:swap_zone/resources/values_manager.dart';

class OnBoardingControl extends StatelessWidget {
  final int currentPage;
  final int limit;
  final Function({required BuildContext context}) nextPage;
  final Function({required BuildContext context}) getStarted;

  const OnBoardingControl({
    super.key,
    required this.currentPage,
    required this.limit,
    required this.nextPage,
    required this.getStarted,
  });

  @override
  Widget build(BuildContext context) {
    return currentPage != limit - 1
        ? Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              DotsIndicator(
                current: currentPage,
                limit: limit,
              ),
              SizedBox(width: AppSize.s12.w),
              SizedBox(
                width: AppSize.s200.w,
                child: Button(
                  text: StringsManager.next,
                  onPressed: () {
                    nextPage(context: context);
                  },
                ),
              ),
            ],
          )
        : Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              DotsIndicator(
                current: currentPage,
                limit: limit,
              ),
              SizedBox(height: AppSize.s12.h),
              SizedBox(
                width: AppSize.s200.w,
                child: Button(
                  text: StringsManager.getStarted,
                  onPressed: () {
                    getStarted(context: context);
                  },
                ),
              ),
            ],
          );
  }
}
