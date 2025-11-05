import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomAppBarTheme{
  static AppBarThemeData get appBarTheme{
    return AppBarThemeData(
      titleTextStyle: TextStyle(
        fontSize: 16.sp,
        fontWeight: FontWeight.w600,
        letterSpacing: 0.1.sp,
        color: Colors.black
      ),
      centerTitle: true,
      elevation: 0,
      backgroundColor: Colors.grey.shade50,
      scrolledUnderElevation: 0,
    );
  }

}