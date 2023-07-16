import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:swap_zone/components/widgets/auth_text_field.dart';
import 'package:swap_zone/components/widgets/button.dart';
import 'package:swap_zone/components/widgets/can_exit.dart';
import 'package:swap_zone/components/widgets/horizontal_app_logo.dart';
import 'package:swap_zone/components/widgets/or_divider.dart';
import 'package:swap_zone/components/widgets/social_media_auth_item.dart';
import 'package:swap_zone/components/widgets/text_widget.dart';
import 'package:swap_zone/resources/assets_manager.dart';
import 'package:swap_zone/resources/colors_manager.dart';
import 'package:swap_zone/resources/constants_manager.dart';
import 'package:swap_zone/resources/fonts_manager.dart';
import 'package:swap_zone/resources/strings_manager.dart';
import 'package:swap_zone/resources/styles_manager.dart';
import 'package:swap_zone/resources/values_manager.dart';
import 'package:swap_zone/view_models/register_view_model/register_view_model.dart';
import 'package:swap_zone/views/register/register_widgets/register_clipper.dart';

class RegisterView extends StatelessWidget {
  final RegisterViewModel viewModel;

  const RegisterView({super.key, required this.viewModel});

  @override
  Widget build(BuildContext context) {
    return CanExit(
      child: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Stack(
              children: [
                // Background
                const RegisterClipper(),

                // Login
                SizedBox(
                  width: double.infinity,
                  child: PositionedDirectional(
                    start: 0,
                    child: Padding(
                      padding: EdgeInsets.all(AppPadding.p20.r),
                      child: Form(
                        key: viewModel.formKey,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: AppSize.s30.h),

                            // Logo
                            const Center(
                              child: HorizontalAppLogo(),
                            ),

                            SizedBox(height: AppSize.s20.h),

                            // Register Title and message
                            Center(
                              child: TextWidget(
                                text: StringsManager.registerTitle,
                                style: getBoldStyle(
                                  color: ColorsManager.purple,
                                  fontSize: FontSize.fs18.sp,
                                ),
                              ),
                            ),
                            Center(
                              child: TextWidget(
                                text: StringsManager.registerMessage,
                                style: getMediumStyle(
                                  color: ColorsManager.black,
                                  fontSize: FontSize.fs14.sp,
                                ),
                              ),
                            ),

                            SizedBox(height: AppSize.s20.h),

                            TextWidget(
                              text: StringsManager.fullName,
                              style: getBoldStyle(
                                color: ColorsManager.black,
                                fontSize: FontSize.fs14.sp,
                              ),
                            ),
                            SizedBox(height: AppSize.s4.h),
                            AuthTextField(
                              maxLength:
                                  ConstantsManager.registerFullNameMaxLength,
                              controller: viewModel.fullNameController,
                              text: StringsManager.fullNameHint,
                              inputType: TextInputType.name,
                              validator: viewModel.emptyFieldValidation,
                              prefixIcon: AssetsManager.iconGetter(
                                iconName: 'person',
                              ),
                            ),

                            SizedBox(height: AppSize.s12.h),

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

                            SizedBox(height: AppSize.s20.h),

                            // Register Button
                            Center(
                              child: SizedBox(
                                width: MediaQuery.of(context).size.width * 0.75,
                                height: AppSize.s40.h,
                                child: Button(
                                  text: StringsManager.createNewAccount,
                                  onPressed: () {
                                    viewModel.onPressCreateNewAccount();
                                  },
                                ),
                              ),
                            ),

                            SizedBox(height: AppSize.s20.h),

                            const OrDivider(),

                            SizedBox(height: AppSize.s20.h),

                            // Social Media
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

                            // Login
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                TextWidget(
                                  text: StringsManager.alreadyHaveAccount,
                                  style: getRegularStyle(
                                    color: ColorsManager.black,
                                    fontSize: FontSize.fs14.sp,
                                  ),
                                ),
                                TextButton(
                                  child: TextWidget(
                                    text: StringsManager.signInTitle,
                                    style: getBoldStyle(
                                      color: ColorsManager.purple,
                                      fontSize: FontSize.fs14.sp,
                                    ),
                                  ),
                                  onPressed: () {
                                    viewModel.onPressSignInNow(context: context);
                                  },
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
