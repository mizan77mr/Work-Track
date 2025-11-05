import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:work_track/core/constants/app_colors.dart';
import 'package:work_track/core/themes/app_text_theme.dart';
import 'package:work_track/core/utils/gap.dart';

class TaskCard extends StatefulWidget {
  const TaskCard({super.key});

  @override
  State<TaskCard> createState() => _TaskCardState();
}

class _TaskCardState extends State<TaskCard> {
  bool _isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(16.w),
      padding: EdgeInsets.only(top: 8.h, bottom: 8.h, right: 8.w),
      decoration: BoxDecoration(
        color: Colors.grey.shade50,
        borderRadius: BorderRadius.circular(12.r),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 2.r,
            offset: Offset(0, 1),
          ),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 8.w, right: 8.w),
            child: InkWell(
              onTap: () {
                setState(() {
                  _isSelected = !_isSelected;
                });
              },
              child: _isSelected
                  ? Icon(Icons.check_circle, color: AppColors.themeColor)
                  : Icon(Icons.radio_button_off),
            ),
          ),

          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Task Name',
                style: fontSize16(context).copyWith(
                  fontWeight: FontWeight.w500,
                  letterSpacing: 0.1.sp,
                  decoration: _isSelected ? TextDecoration.lineThrough : null,
                  decorationStyle: TextDecorationStyle.solid,
                ),
              ),
              Gap.height(8),
              Text(
                'Task notes',
                style: fontSize12(context).copyWith(
                  color: Colors.grey,
                  fontWeight: FontWeight.w400,
                  letterSpacing: 0.1.sp,
                ),
              ),
              Gap.height(8),
              Text(
                'In Task time',
                style: fontSize12(context).copyWith(
                  fontWeight: FontWeight.bold,
                  color: Colors.grey,
                  letterSpacing: 0.1.sp,
                ),
              ),
            ],
          ),
          Spacer(),
          Text(
            'at 10:45 PM',
            style: fontSize12(context).copyWith(
              color: Colors.grey,
              fontWeight: FontWeight.w500,
              letterSpacing: 0.1.sp,
            ),
          ),
        ],
      ),
    );
  }
}
