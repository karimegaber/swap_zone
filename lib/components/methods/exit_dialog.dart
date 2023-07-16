import 'dart:io';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:swap_zone/resources/colors_manager.dart';
import 'package:swap_zone/resources/fonts_manager.dart';
import 'package:swap_zone/resources/strings_manager.dart';
import 'package:swap_zone/resources/styles_manager.dart';
import 'package:swap_zone/resources/values_manager.dart';

// Exit dialog pop up
Future<bool> showExitPopup(context) async {
  return await showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        content: SizedBox(
          height: AppSize.s100.h,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                StringsManager.exitDialogMessage.tr(),
                style: getBoldStyle(
                    color: ColorsManager.red, fontSize: FontSize.fs20.sp),
              ),
              SizedBox(height: AppSize.s20.h),
              Expanded(
                child: Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {
                          exit(0);
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: ColorsManager.red,
                        ),
                        child: Text(
                          StringsManager.confirm.tr(),
                          style: getRegularStyle(
                              color: ColorsManager.white,
                              fontSize: FontSize.fs16.sp),
                        ),
                      ),
                    ),
                    SizedBox(width: AppSize.s16.h),
                    Expanded(
                        child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                      ),
                      child: Text(
                        StringsManager.cancel.tr(),
                        style: getRegularStyle(
                          color: ColorsManager.black,
                          fontSize: FontSize.fs16.sp,
                        ),
                      ),
                    ))
                  ],
                ),
              )
            ],
          ),
        ),
      );
    },
  );
}
