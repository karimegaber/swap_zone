import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_phoenix/flutter_phoenix.dart';
import 'package:swap_zone/app.dart';
import 'package:swap_zone/resources/language_manager.dart';
import 'package:swap_zone/services/local/cache_helper.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await CacheHelper.init();

  // App
  await EasyLocalization.ensureInitialized().then(
    (value) {
      runApp(
        EasyLocalization(
          supportedLocales: const [
            arabicLocal,
            englishLocal,
          ],
          path: localizationPath,
          child: Phoenix(
            child: const MyApp(),
          ),
        ),
      );
    },
  );
}
