import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:swap_zone/components/widgets/auth_text_field.dart';
import 'package:swap_zone/components/widgets/button.dart';
import 'package:swap_zone/components/widgets/can_exit.dart';
import 'package:swap_zone/components/widgets/or_divider.dart';
import 'package:swap_zone/components/widgets/social_media_auth_item.dart';
import 'package:swap_zone/components/widgets/text_widget.dart';
import 'package:swap_zone/resources/assets_manager.dart';
import 'package:swap_zone/resources/colors_manager.dart';
import 'package:swap_zone/resources/fonts_manager.dart';
import 'package:swap_zone/resources/strings_manager.dart';
import 'package:swap_zone/resources/styles_manager.dart';
import 'package:swap_zone/resources/values_manager.dart';
import 'package:swap_zone/view_models/sign_in_view_model/sign_in_view_model.dart';
import 'package:swap_zone/views/sign_in/sign_in_widgets/heading_widget.dart';

class SignInView extends StatelessWidget {
  final SignInViewModel viewModel;

  const SignInView({super.key, required this.viewModel});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CanExit(
        child: Scaffold(
          body: SingleChildScrollView(
            child: Form(
              key: viewModel.formKey,
              child: Column(
                children: [
                  const SignInHeadingWidget(),

                  Padding(
                    padding: EdgeInsets.all(AppPadding.p20.r),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Sign in Title and message
                        TextWidget(
                          text: StringsManager.signInTitle,
                          style: getBoldStyle(
                            color: ColorsManager.purple,
                            fontSize: FontSize.fs18.sp,
                          ),
                        ),
                        TextWidget(
                          text: StringsManager.signInMessage,
                          style: getMediumStyle(
                            color: ColorsManager.black,
                            fontSize: FontSize.fs14.sp,
                          ),
                        ),

                        SizedBox(height: AppSize.s20.h),

                        // Email Address
                        TextWidget(
                          text: StringsManager.emailAddress,
                          style: getBoldStyle(
                            color: ColorsManager.black,
                            fontSize: FontSize.fs14.sp,
                          ),
                        ),
                        SizedBox(height: AppSize.s4.h),
                        AuthTextField(
                          controller: viewModel.emailAddressController,
                          text: StringsManager.emailAddressHint,
                          inputType: TextInputType.emailAddress,
                          validator: viewModel.emailAddressValidation,
                          prefixIcon: AssetsManager.iconGetter(
                            iconName: 'email_address',
                          ),
                        ),

                        SizedBox(height: AppSize.s12.h),

                        // Password
                        TextWidget(
                          text: StringsManager.password,
                          style: getBoldStyle(
                            color: ColorsManager.black,
                            fontSize: FontSize.fs14.sp,
                          ),
                        ),
                        SizedBox(height: AppSize.s4.h),
                        StatefulBuilder(
                          builder: (BuildContext context,
                              void Function(void Function()) setState) {
                            return AuthTextField(
                              isPassword: true,
                              obscure: viewModel.passwordVisibility,
                              controller: viewModel.passwordController,
                              text: StringsManager.passwordHint,
                              inputType: TextInputType.visiblePassword,
                              validator: viewModel.passwordLengthValidation,
                              prefixIcon: AssetsManager.iconGetter(
                                  iconName: 'password'),
                              suffixIcon: AssetsManager.iconGetter(
                                iconName: viewModel.passwordVisibility
                                    ? 'visibility_on'
                                    : 'visibility_off',
                              ),
                              onPressSuffix: () {
                                setState(() {
                                  viewModel.changePasswordVisibilityState();
                                });
                              },
                            );
                          },
                        ),

                        // Forgot Password
                        Align(
                          alignment: AlignmentDirectional.centerEnd,
                          child: TextButton(
                            child: TextWidget(
                              text: StringsManager.forgotPassword,
                              style: getRegularStyle(
                                color: ColorsManager.black,
                                fontSize: FontSize.fs14.sp,
                              ),
                            ),
                            onPressed: () {},
                          ),
                        ),

                        SizedBox(height: AppSize.s10.h),

                        // Sign in Button
                        Center(
                          child: SizedBox(
                            width: MediaQuery.of(context).size.width * 0.75,
                            height: AppSize.s40.h,
                            child: Button(
                              text: StringsManager.signIn,
                              onPressed: () {
                                viewModel.onPressSignIn();
                              },
                            ),
                          ),
                        ),

                        SizedBox(height: AppSize.s20.h),

                        const OrDivider(),

                        SizedBox(height: AppSize.s20.h),

                        // Social Media Sign in
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SocialMediaAuthItem(
                              iconName: 'google',
                              onPressed: () {},
                            ),
                            SizedBox(width: AppSize.s20.w),
                            SocialMediaAuthItem(
                              iconName: 'facebook',
                              onPressed: () {},
                            ),
                          ],
                        ),

                        SizedBox(height: AppSize.s20.h),

                        // Create new account
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            TextWidget(
                              text: StringsManager.haveNoAccount,
                              style: getRegularStyle(
                                color: ColorsManager.black,
                                fontSize: FontSize.fs14.sp,
                              ),
                            ),
                            TextButton(
                              child: TextWidget(
                                text: StringsManager.createNewAccount,
                                style: getBoldStyle(
                                  color: ColorsManager.purple,
                                  fontSize: FontSize.fs14.sp,
                                ),
                              ),
                              onPressed: () {
                                viewModel.onPressCreateNewAccount(context: context);
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
