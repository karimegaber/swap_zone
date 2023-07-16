import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:swap_zone/components/widgets/auth_text_field.dart';
import 'package:swap_zone/components/widgets/button.dart';
import 'package:swap_zone/components/widgets/or_divider.dart';
import 'package:swap_zone/resources/assets_manager.dart';
import 'package:swap_zone/resources/colors_manager.dart';
import 'package:swap_zone/resources/strings_manager.dart';
import 'package:swap_zone/resources/values_manager.dart';
import 'package:swap_zone/views/sign_in/sign_in_widgets/heading_widget.dart';

class SignInView extends StatelessWidget {
  const SignInView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              // Heading
              Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.30,
                padding: EdgeInsets.all(AppPadding.p12.r),
                child: const SignInHeadingWidget(),
              ),

              // Email and Password
              Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.70,
                padding: EdgeInsets.all(AppPadding.p20.r),
                decoration: BoxDecoration(
                  color: ColorsManager.orange.withOpacity(0.7),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(AppSize.s40.r),
                    topRight: Radius.circular(AppSize.s40.r),
                  ),
                ),
                child: Column(
                  children: [
                    SizedBox(height: AppSize.s50.h),
                    AuthTextField(
                      controller: TextEditingController(),
                      text: 'Email address',
                      prefixIcon: AssetsManager.imageGetter(
                        imageName: 'on_boarding_screen_1',
                        svg: true,
                      ),
                      validator: (x) {},
                      inputType: TextInputType.emailAddress,
                    ),
                    SizedBox(height: AppSize.s12.h),
                    AuthTextField(
                      controller: TextEditingController(),
                      text: 'Password',
                      prefixIcon: AssetsManager.imageGetter(
                        imageName: 'on_boarding_screen_1',
                        svg: true,
                      ),
                      validator: (x) {},
                      inputType: TextInputType.emailAddress,
                    ),
                    SizedBox(height: AppSize.s20.h),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.75,
                      height: AppSize.s40.h,
                      child: Button(
                        text: StringsManager.signIn,
                        onPressed: () {},
                      ),
                    ),
                    SizedBox(height: AppSize.s20.h),
                    const OrDivider(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
