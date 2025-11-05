import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:work_track/core/constants/app_colors.dart';
import 'package:work_track/core/themes/app_text_theme.dart';
import 'package:work_track/core/utils/gap.dart'; // তারিখ সুন্দরভাবে format করার জন্য

class CupertinoTimePickerDemo extends StatefulWidget {
  const CupertinoTimePickerDemo({super.key});

  @override
  State<CupertinoTimePickerDemo> createState() =>
      _CupertinoTimePickerDemoState();
}

class _CupertinoTimePickerDemoState extends State<CupertinoTimePickerDemo> {
  DateTime selectedDateTime = DateTime.now();

  @override
  Widget build(BuildContext context) {
    final formattedDate = DateFormat(
      'EEEE, MMMM dd, yyyy • hh:mm a',
    ).format(selectedDateTime);

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.w),
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(20.r),
              ),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(CupertinoIcons.time, color: AppColors.themeColor),
                    Gap.width(8),
                    Text(
                      formattedDate,
                      style: fontSize15(context).copyWith(
                        fontWeight: FontWeight.w500,
                        color: AppColors.themeColor,
                      ),
                    ),
                  ],
                ),
              ),
            ),

            Gap.height(16),

            Expanded(
              child: CupertinoTheme(
                data: CupertinoThemeData(brightness: Brightness.light),
                child: CupertinoDatePicker(
                  mode: CupertinoDatePickerMode.dateAndTime,
                  initialDateTime: selectedDateTime,
                  use24hFormat: false,
                  onDateTimeChanged: (DateTime newDate) {
                    setState(() {
                      selectedDateTime = newDate;
                    });
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
