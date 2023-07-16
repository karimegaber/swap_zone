import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:swap_zone/components/widgets/can_exit.dart';
import 'package:swap_zone/components/widgets/on_boarding_page.dart';
import 'package:swap_zone/resources/values_manager.dart';
import 'package:swap_zone/view_models/on_boarding_view_model/on_boarding_view_model.dart';
import 'package:swap_zone/views/on_boarding/on_boarding_widgets/on_boarding_control.dart';

class OnBoardingView extends StatelessWidget {
  final OnBoardingViewModel viewModel;

  const OnBoardingView({super.key, required this.viewModel});

  @override
  Widget build(BuildContext context) {
    return CanExit(
      child: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(AppPadding.p12.r),
            child: StatefulBuilder(
              builder: (BuildContext context,
                  void Function(void Function()) setState) {
                return Column(
                  children: [
                    Expanded(
                      child: PageView.builder(
                        physics: const BouncingScrollPhysics(),
                        itemCount: viewModel.onBoardingPages.length,
                        controller: viewModel.pageController,
                        onPageChanged: (index) {
                          setState(() {
                            viewModel.onPageChanged(index: index);
                          });
                        },
                        itemBuilder: (context, index) => OnBoardingPage(
                          page: viewModel.onBoardingPages[index],
                        ),
                      ),
                    ),
                    SizedBox(height: AppSize.s20.h),

                    // Controls
                    OnBoardingControl(
                      currentPage: viewModel.currentPage,
                      limit: viewModel.onBoardingPages.length,
                      nextPage: ({required BuildContext context}) {
                        viewModel.nextPage(context: context);
                      },
                      getStarted: ({required BuildContext context}) {
                        viewModel.getStarted(context: context);
                      },
                    ),
                  ],
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
