import 'package:flutter/material.dart';
import 'package:swap_zone/components/widgets/wave_clippter.dart';
import 'package:swap_zone/resources/colors_manager.dart';

class RegisterClipper extends StatelessWidget {
  const RegisterClipper({Key? key}) : super(key: key);

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
              height: MediaQuery.of(context).size.height * 0.7,
            ),
          ),
        ),
        ClipPath(
          clipper: WaveClipper(),
          child: Container(
            height: MediaQuery.of(context).size.height * 0.4,
            color: ColorsManager.lightOrange,
          ),
        ),
      ],
    );
  }
}
