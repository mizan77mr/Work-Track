import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextFieldTheme{
  static InputDecorationTheme get textFormFieldTheme {
    return InputDecorationTheme(
      hintStyle: TextStyle(
        color: Colors.grey
      ),
      enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.r),
          borderSide: BorderSide.none
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8.r),
        borderSide: BorderSide(color: Colors.grey, width: 1.w),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12.r),
        borderSide: BorderSide(color: Colors.red, width: 1.5.w),
      ),
      contentPadding: EdgeInsets.symmetric(horizontal: 16.w),
      fillColor: Colors.grey.shade200,
      filled: true,
      focusColor: Colors.white,

    );
  }

}