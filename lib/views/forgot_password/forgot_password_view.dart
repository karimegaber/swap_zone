import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:swap_zone/components/widgets/auth_text_field.dart';
import 'package:swap_zone/components/widgets/button.dart';
import 'package:swap_zone/components/widgets/text_widget.dart';
import 'package:swap_zone/components/widgets/wave_clippter.dart';
import 'package:swap_zone/resources/assets_manager.dart';
import 'package:swap_zone/resources/colors_manager.dart';
import 'package:swap_zone/resources/fonts_manager.dart';
import 'package:swap_zone/resources/strings_manager.dart';
import 'package:swap_zone/resources/styles_manager.dart';
import 'package:swap_zone/resources/values_manager.dart';
import 'package:swap_zone/view_models/forgot_password_view_model/forgot_password_view_model.dart';

class ForgotPasswordView extends StatelessWidget {
  final ForgotPasswordViewModel viewModel;

  const ForgotPasswordView({super.key, required this.viewModel});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorsManager.purple.withOpacity(0.6),
        leading: IconButton(
          onPressed: () {
            viewModel.onPressBackIcon(context: context);
          },
          icon: const Icon(
            Icons.arrow_back_ios,
            color: ColorsManager.white,
          ),
        ),
        title: TextWidget(
          text: StringsManager.forgotPassword,
          style: getBoldStyle(
            color: ColorsManager.white,
            fontSize: FontSize.fs18.sp,
          ),
        ),
      ),
      body: WillPopScope(
        onWillPop: () async {
          viewModel.onPressBackIcon(context: context);
          return true;
        },
        child: SingleChildScrollView(
          child: Stack(
            children: [
              ClipPath(
                clipper: WaveClipper(),
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.5,
                  color: ColorsManager.purple.withOpacity(0.6),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(AppPadding.p20.r),
                child: Form(
                  key: viewModel.formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Info
                      TextWidget(
                        text: StringsManager.forgotPasswordTitle,
                        style: getBoldStyle(
                          color: ColorsManager.purple,
                          fontSize: FontSize.fs18.sp,
                        ),
                      ),
                      TextWidget(
                        text: StringsManager.forgotPasswordDescription,
                        style: getMediumStyle(
                          color: ColorsManager.black,
                          fontSize: FontSize.fs14.sp,
                        ),
                        textAlign: TextAlign.start,
                      ),

                      SizedBox(height: AppSize.s30.h),

                      // Image
                      Center(
                        child: Container(
                          width: double.infinity,
                          height: MediaQuery.of(context).size.height * 0.3,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: ColorsManager.purple,
                          ),
                          child: SvgPicture.asset(
                            AssetsManager.imageGetter(
                              imageName: 'forgot_password',
                              svg: true,
                            ),
                          ),
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

                      SizedBox(height: AppSize.s20.h),

                      // Send reset password email
                      Center(
                        child: SizedBox(
                          height: AppSize.s50.h,
                          child: Button(
                            text: StringsManager.sendInstructionsEmail,
                            onPressed: () {
                              viewModel.onPressSendInstructionsEmail();
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
