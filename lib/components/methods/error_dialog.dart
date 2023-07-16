import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:swap_zone/components/widgets/text_widget.dart';
import 'package:swap_zone/resources/colors_manager.dart';
import 'package:swap_zone/resources/fonts_manager.dart';
import 'package:swap_zone/resources/strings_manager.dart';
import 'package:swap_zone/resources/styles_manager.dart';

showErrorDialog({
  required BuildContext context,
  required String error,
}) {
  showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        content: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextWidget(
              text: error,
              style: getMediumStyle(
                  color: ColorsManager.black, fontSize: FontSize.fs14.sp),
            ),
          ],
        ),
        actions: [
          Align(
            alignment: AlignmentDirectional.centerEnd,
            child: TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: TextWidget(
                text: StringsManager.cancel,
                style: getRegularStyle(
                    color: ColorsManager.grey, fontSize: FontSize.fs14.sp),
              ),
            ),
          ),
        ],
      );
    },
  );
}
