import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Gap {
  static height(double gap) {
    return SizedBox(height: gap.h);
  }

  static width(double gap) {
    return SizedBox(width: gap.w);
  }
}