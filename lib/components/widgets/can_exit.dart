import 'package:flutter/material.dart';
import 'package:swap_zone/components/methods/exit_dialog.dart';

class CanExit extends StatelessWidget {
  final Widget child;

  const CanExit({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => showExitPopup(context),
      child: child,
    );
  }
}
