import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:swap_zone/resources/colors_manager.dart';
import 'package:swap_zone/resources/fonts_manager.dart';
import 'package:swap_zone/resources/styles_manager.dart';
import 'package:swap_zone/resources/values_manager.dart';

class AuthTextField extends StatelessWidget {
  final TextEditingController controller;
  bool obscure;
  bool isPassword;
  final String text;
  final String prefixIcon;
  String? suffixIcon;
  VoidCallback? onPressSuffix;
  final String? Function(String?)? validator;
  final TextInputType inputType;
  int? maxLength;

  AuthTextField({
    super.key,
    required this.controller,
    required this.text,
    required this.prefixIcon,
    required this.validator,
    required this.inputType,
    this.suffixIcon,
    this.obscure = false,
    this.isPassword = false,
    this.onPressSuffix,
    this.maxLength,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      scrollPadding:
          EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
      validator: validator,
      style: getRegularStyle(
          fontSize: FontSize.fs14.sp, color: ColorsManager.purple),
      controller: controller,
      obscureText: obscure,
      keyboardType: inputType,
      maxLength: maxLength,
      decoration: InputDecoration(
        counterText: '',
        filled: true,
        fillColor: ColorsManager.lightGrey,
        contentPadding: EdgeInsets.symmetric(horizontal: AppPadding.p20.w),
        hintText: text,
        hintStyle: getRegularStyle(
            fontSize: FontSize.fs14.sp, color: ColorsManager.grey),
        prefixIcon: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: AppPadding.p12.r, vertical: AppPadding.p12.r),
          child: SvgPicture.asset(
            prefixIcon,
            height: AppSize.s12.r,
            width: AppSize.s12.r,
            fit: BoxFit.fill,
            color: ColorsManager.purple,
          ),
        ),
        suffixIcon: isPassword
            ? GestureDetector(
                onTap: onPressSuffix,
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: AppPadding.p12.r, vertical: AppPadding.p12.r),
                  child: SvgPicture.asset(
                    suffixIcon ?? '',
                    height: AppSize.s12.r,
                    width: AppSize.s12.r,
                    fit: BoxFit.cover,
                    color: ColorsManager.purple,
                  ),
                ),
              )
            : null,
        // Enabled Border
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
              color: ColorsManager.grey.withOpacity(0.6),
              width: AppSize.s1_5.r),
          borderRadius: BorderRadius.circular(AppSize.s8.r),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppSize.s30.r),
          borderSide: const BorderSide(color: ColorsManager.grey),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppSize.s30.r),
          borderSide: const BorderSide(color: ColorsManager.red),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppSize.s30.r),
          borderSide: const BorderSide(color: ColorsManager.purple),
        ),
      ),
    );
  }
}
