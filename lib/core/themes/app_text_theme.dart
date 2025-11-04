import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextTheme {
  static TextTheme get textTheme {
    return TextTheme(
      labelSmall: TextStyle(fontSize: 10.sp),
      bodySmall: TextStyle(fontSize: 12.sp),
      bodyMedium: TextStyle(fontSize: 14.sp),
      titleSmall: TextStyle(fontSize: 14.sp),
      titleMedium: TextStyle(fontSize: 15.sp),
      titleLarge: TextStyle(fontSize: 16.sp),
      headlineSmall: TextStyle(fontSize: 18.sp),
      headlineMedium: TextStyle(fontSize: 20.sp),
      headlineLarge: TextStyle(fontSize: 24.sp),
      displayMedium: TextStyle(fontSize: 48.sp),
    );
  }
}

TextStyle fontSize10(context) {
  return TextTheme.of(context).labelSmall!;
}

TextStyle fontSize12(context) {
  return TextTheme.of(context).bodySmall!;
}

TextStyle fontSize14(context) {
  return TextTheme.of(context).bodyMedium!;
}

TextStyle fontSize15(context) {
  return TextTheme.of(context).titleMedium!;
}

TextStyle fontSize16(context) {
  return TextTheme.of(context).titleLarge!;
}

TextStyle fontSize18(context) {
  return TextTheme.of(context).headlineSmall!;
}

TextStyle fontSize20(context) {
  return TextTheme.of(context).headlineMedium!;
}

TextStyle fontSize24(context) {
  return TextTheme.of(context).headlineLarge!;
}