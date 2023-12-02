import 'package:flutter/material.dart';
import 'package:cgrae_enrollment/utils/styles.dart';

ThemeData theme = ThemeData(
  //useMaterial3: true,
  scaffoldBackgroundColor: Colors.white,
  primarySwatch: AppColors.primarySwatch,
  colorScheme: ColorScheme.fromSwatch(
    primarySwatch: AppColors.primarySwatch,
    accentColor: Colors.deepOrange,
    backgroundColor: Colors.white,
  ),
  inputDecorationTheme: InputDecorationTheme(
    enabledBorder: outlineInputBorderNone,
    focusedBorder: outlineInputBorderNone,
    disabledBorder: outlineInputBorderNone,
  ),
);
