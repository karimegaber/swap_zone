import 'package:flutter/material.dart';
import 'package:swap_zone/models/on_boarding_page_model.dart';
import 'package:swap_zone/resources/assets_manager.dart';
import 'package:swap_zone/resources/constants_manager.dart';
import 'package:swap_zone/resources/routes_manager.dart';
import 'package:swap_zone/resources/strings_manager.dart';
import 'package:swap_zone/services/local/cache_helper.dart';

class OnBoardingViewModel {
  // Current Page
  int currentPage = 0;

  // Controller
  final PageController pageController = PageController();

  // Pages
  List<OnBoardingPageModel> onBoardingPages = [
    // 1
    OnBoardingPageModel(
      title: StringsManager.onBoardingTitle1,
      description: StringsManager.onBoardingDescription1,
      image: AssetsManager.imageGetter(
        imageName: 'on_boarding_screen_1',
        svg: true,
      ),
    ),

    // 2
    OnBoardingPageModel(
      title: StringsManager.onBoardingTitle2,
      description: StringsManager.onBoardingDescription2,
      image: AssetsManager.imageGetter(
        imageName: 'on_boarding_screen_2',
        svg: true,
      ),
    ),

    // 3
    OnBoardingPageModel(
      title: StringsManager.onBoardingTitle3,
      description: StringsManager.onBoardingDescription3,
      image: AssetsManager.imageGetter(
        imageName: 'on_boarding_screen_3',
        svg: true,
      ),
    ),
  ];

  // Next Page
  void nextPage({required BuildContext context}) {
    if (currentPage < onBoardingPages.length - 1) {
      currentPage += 1;
      pageController.animateToPage(
        currentPage,
        duration: const Duration(milliseconds: ConstantsManager.onBoardingAnimationDurationInMilliseconds),
        curve: Curves.linear,
      );
    }
  }

  // Page view -> onPageChanged
  void onPageChanged({required int index}) {
    currentPage = index;
  }

  // Navigate user to auth options.
  getStarted({required BuildContext context}) {
    Navigator.of(context)
        .pushReplacementNamed(Routes.getStartedScreenRoute)
        .then(
      (value) {
        CacheHelper.insertData(
            key: ConstantsManager.onBoardingSkipped, value: true);
      },
    );
  }
}
