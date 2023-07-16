import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:swap_zone/resources/colors_manager.dart';
import 'package:swap_zone/resources/values_manager.dart';

class DotsIndicator extends StatelessWidget {
  final int current;
  final int limit;

  const DotsIndicator({super.key, required this.current, required this.limit});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        for (int i = 0; i < limit; i++)
          Icon(
            Icons.circle,
            color:
                current == i ? ColorsManager.orange : ColorsManager.lightGrey,
            size: current == i ? AppSize.s16.r : AppSize.s12.r,
          ),
      ],
    );
  }
}
