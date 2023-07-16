import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:swap_zone/components/widgets/can_exit.dart';
import 'package:swap_zone/components/widgets/on_boarding_page.dart';
import 'package:swap_zone/resources/values_manager.dart';
import 'package:swap_zone/view_models/on_boarding_view_model/on_boarding_view_model.dart';
import 'package:swap_zone/views/on_boarding/on_boarding_widgets/on_boarding_control.dart';

late OnBoardingViewModel _viewModel;

class OnBoardingView extends StatefulWidget {
  const OnBoardingView({super.key});

  @override
  State<OnBoardingView> createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {
  @override
  Widget build(BuildContext context) {
    _viewModel = OnBoardingViewModel();

    return CanExit(
      child: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(AppPadding.p12.r),
            child: Column(
              children: [
                Expanded(
                  child: PageView.builder(
                    physics: const BouncingScrollPhysics(),
                    itemCount: _viewModel.onBoardingPages.length,
                    controller: _viewModel.pageController,
                    onPageChanged: (index) {
                      setState(() {
                        _viewModel.onPageChanged(index: index);
                      });
                    },
                    itemBuilder: (context, index) => OnBoardingPage(
                      page: _viewModel.onBoardingPages[index],
                    ),
                  ),
                ),
                SizedBox(height: AppSize.s20.h),

                // Controls
                OnBoardingControl(
                  currentPage: _viewModel.currentPage,
                  limit: _viewModel.onBoardingPages.length,
                  nextPage: _viewModel.nextPage,
                  getStarted: _viewModel.getStarted(context: context),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
