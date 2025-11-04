import 'package:flutter/material.dart';
import 'package:work_track/core/constants/app_colors.dart';
import 'package:work_track/core/themes/app_text_theme.dart';
import 'package:work_track/core/themes/custom_elevated_button_theme.dart';

class AppTheme {
  static ThemeData get lightTheme {
    return ThemeData(
      colorScheme: ColorScheme.fromSwatch(
        primarySwatch: AppColors.getMaterialColor(AppColors.themeColor),
      ),
      textTheme: AppTextTheme.textTheme,
      elevatedButtonTheme: CustomElevatedButtonTheme.elevatedButtonTheme,
    );
  }
}
