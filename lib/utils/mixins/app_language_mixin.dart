import 'package:flutter/material.dart';
import 'package:swap_zone/resources/constants_manager.dart';
import 'package:swap_zone/resources/language_manager.dart';
import 'package:swap_zone/services/local/cache_helper.dart';

mixin AppLanguageMixin {
  static late String appCurrentLanguage;

  // Get App language
  static Future<String> getAppLanguage() async {
    String? language =
        await CacheHelper.getData(key: ConstantsManager.languageKey);

    if (language != null && language.isNotEmpty) {
      appCurrentLanguage = language;
      return language;
    } else {
      appCurrentLanguage = LanguageType.english.getValue();
      return LanguageType.english.getValue();
    }
  }

  // Set app language
  static Future<void> changeAppLanguage() async {
    String currentLanguage = await getAppLanguage();

    if (currentLanguage == LanguageType.arabic.getValue()) {
      CacheHelper.insertData(
        key: ConstantsManager.languageKey,
        value: LanguageType.english.getValue(),
      );
    } else {
      CacheHelper.insertData(
        key: ConstantsManager.languageKey,
        value: LanguageType.arabic.getValue(),
      );
    }
  }

  static Future<Locale> getLocal() async {
    String currentLanguage = await getAppLanguage();

    if (currentLanguage == LanguageType.arabic.getValue()) {
      return arabicLocal;
    } else {
      return englishLocal;
    }
  }
}
