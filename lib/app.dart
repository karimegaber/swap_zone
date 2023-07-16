import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:swap_zone/resources/constants_manager.dart';
import 'package:swap_zone/resources/routes_manager.dart';
import 'package:swap_zone/resources/themes_manager.dart';
import 'package:swap_zone/utils/mixins/app_language_mixin.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void didChangeDependencies() {
    AppLanguageMixin.getLocal().then((local) => context.setLocale(local));
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(
        ConstantsManager.appScreenWidth,
        ConstantsManager.appScreenHeight,
      ),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (BuildContext context, Widget? child) {
        return MaterialApp(
          localizationsDelegates: context.localizationDelegates,
          supportedLocales: context.supportedLocales,
          locale: context.locale,
          debugShowCheckedModeBanner: false,
          title: ConstantsManager.appName,
          theme: ThemesManager.appTheme(mode: AppThemeMode.light),
          initialRoute: Routes.splashScreenRoute,
          onGenerateRoute: RoutesGenerator.getRoute,
        );
      },
    );
  }
}
