import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:swap_zone/components/widgets/text_widget.dart';
import 'package:swap_zone/resources/colors_manager.dart';
import 'package:swap_zone/resources/strings_manager.dart';
import 'package:swap_zone/resources/styles_manager.dart';
import 'package:swap_zone/resources/values_manager.dart';

class OrDivider extends StatelessWidget {
  const OrDivider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: AppPadding.p20.r),
      child: Row(
        children: [
          const Expanded(
            child: Divider(
              thickness: 1,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: AppPadding.p8.w),
            child: TextWidget(
              text: StringsManager.or,
              style: getRegularStyle(color: ColorsManager.purple),
            ),
          ),
          const Expanded(
            child: Divider(
              thickness: 1,
            ),
          ),
        ],
      ),
    );
  }
}
