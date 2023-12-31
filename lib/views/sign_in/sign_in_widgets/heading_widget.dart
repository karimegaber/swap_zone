import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:swap_zone/components/widgets/horizontal_app_logo.dart';
import 'package:swap_zone/components/widgets/wave_clippter.dart';
import 'package:swap_zone/resources/colors_manager.dart';
import 'package:swap_zone/resources/values_manager.dart';

class SignInHeadingWidget extends StatelessWidget {
  const SignInHeadingWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Opacity(
          opacity: 0.5,
          child: ClipPath(
            clipper: WaveClipper(),
            child: Container(
              color: ColorsManager.lightOrange,
              height: MediaQuery.of(context).size.height * 0.30,
            ),
          ),
        ),
        ClipPath(
          clipper: WaveClipper(),
          child: Container(
            height: MediaQuery.of(context).size.height * 0.25,
            color: ColorsManager.lightOrange,
          ),
        ),
        Padding(
          padding: EdgeInsets.all(AppPadding.p25.r),
          child: const HorizontalAppLogo(),
        ),
      ],
    );
  }
}
