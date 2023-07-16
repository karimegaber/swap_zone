import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:swap_zone/components/widgets/text_widget.dart';
import 'package:swap_zone/models/on_boarding_page_model.dart';
import 'package:swap_zone/resources/colors_manager.dart';
import 'package:swap_zone/resources/fonts_manager.dart';
import 'package:swap_zone/resources/styles_manager.dart';
import 'package:swap_zone/resources/values_manager.dart';

class OnBoardingPage extends StatelessWidget {
  final OnBoardingPageModel page;

  const OnBoardingPage({super.key, required this.page});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Image
        Expanded(
          flex: 3,
          child: Padding(
            padding: EdgeInsets.all(AppPadding.p25.r),
            child: SvgPicture.asset(page.image),
          ),
        ),

        Expanded(
          child: Column(
            children: [
              // Title
              TextWidget(
                text: page.title,
                style: getBoldStyle(
                  color: ColorsManager.purple,
                  fontSize: FontSize.fs16.sp,
                ),
              ),

              // Description
              TextWidget(
                text: page.description,
                style: getRegularStyle(
                  color: ColorsManager.black,
                  fontSize: FontSize.fs14.sp,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
