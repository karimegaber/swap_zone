import 'package:flutter/material.dart';
import 'package:swap_zone/resources/fonts_manager.dart';

TextStyle _getTextStyle(
    {required double fontSize,
    required FontWeight fontWeight,
    required Color color}) {
  return TextStyle(
    fontSize: fontSize,
    fontWeight: fontWeight,
    color: color,
    fontFamily: FontConstants.fontFamily,
  );
}

//Regular Style
TextStyle getRegularStyle({
  double fontSize = FontSize.fs14,
  required Color color,
}) {
  return _getTextStyle(
    fontSize: fontSize,
    color: color,
    fontWeight: FontWeightManager.regular,
  );
}

//Medium Style
TextStyle getMediumStyle({
  double fontSize = FontSize.fs14,
  required Color color,
}) {
  return _getTextStyle(
    fontSize: fontSize,
    color: color,
    fontWeight: FontWeightManager.medium,
  );
}

//Light Style
TextStyle getLightStyle({
  double fontSize = FontSize.fs14,
  required Color color,
}) {
  return _getTextStyle(
    fontSize: fontSize,
    color: color,
    fontWeight: FontWeightManager.light,
  );
}

//Bold Style
TextStyle getBoldStyle({
  double fontSize = FontSize.fs14,
  required Color color,
}) {
  return _getTextStyle(
    fontSize: fontSize,
    color: color,
    fontWeight: FontWeightManager.bold,
  );
}

//Medium Style
TextStyle getSemiBoldStyle({
  double fontSize = FontSize.fs14,
  required Color color,
}) {
  return _getTextStyle(
    fontSize: fontSize,
    color: color,
    fontWeight: FontWeightManager.semiBold,
  );
}
