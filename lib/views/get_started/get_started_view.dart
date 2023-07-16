import 'package:flutter/material.dart';
import 'package:swap_zone/components/widgets/can_exit.dart';

class GetStartedView extends StatelessWidget {
  const GetStartedView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CanExit(
      child: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              Text('asdasdasda'),
            ],
          ),
        ),
      ),
    );
  }
}
