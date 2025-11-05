import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:work_track/core/constants/app_colors.dart';
import 'package:work_track/core/themes/app_text_theme.dart';
import 'package:work_track/core/utils/gap.dart';
import 'package:work_track/features/home/widgets/user_name_and_image_template.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  static final String name = 'home-screen';

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.all(16.w),
          child: Column(
            children: [
              UserNameAndImageTemplate(context: context),
              Gap.height(32),
              _buildCreateTaskAndProgressTaskSection(context),
              Gap.height(24),
              _buildAllTaskCompletedPopup(context)

            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.add, color: Colors.white),
        ),
      ),
    );
  }



  Card _buildAllTaskCompletedPopup(BuildContext context) {
    return Card(
      elevation: 1,
      child: Container(
        padding: EdgeInsets.all(16.w),
        width: double.infinity,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(12.r)),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      'Awesome!',
                      style: fontSize18(context).copyWith(
                        fontWeight: FontWeight.bold,
                        color: AppColors.themeColor,
                      ),
                    ),
                    Icon(Icons.fire_extinguisher_sharp, color: Colors.orange),
                  ],
                ),
                Gap.height(4),
                Text(
                  'All task completed',
                  style: fontSize14(
                    context,
                  ).copyWith(fontWeight: FontWeight.w500),
                ),
                Gap.height(4),
                Text(
                  'You\'ve crushed all 1 task for today!',
                  style: fontSize12(context),
                ),
                Gap.height(8),
                Container(
                  padding: EdgeInsets.only(
                    left: 16.w,
                    right: 16.w,
                    top: 8.h,
                    bottom: 8.h,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.grey.shade100,
                    borderRadius: BorderRadius.circular(20.r),
                  ),
                  child: Row(
                    children: [
                      Text(
                        'Productivity Champion!',
                        style: fontSize12(context).copyWith(
                          fontWeight: FontWeight.bold,
                          color: AppColors.themeColor,
                        ),
                      ),
                      Gap.width(8),
                      Icon(
                        Icons.rocket_launch,
                        size: 16.sp,
                        color: Colors.deepOrangeAccent,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Gap.width(50),
            CircularProgressIndicator(value: 1, strokeAlign: 4, strokeWidth: 8),
          ],
        ),
      ),
    );
  }

  Widget _buildCreateTaskAndProgressTaskSection(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: () {},
          child: Container(
            padding: EdgeInsets.only(
              left: 16.w,
              right: 16.w,
              top: 24.h,
              bottom: 24.h,
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.grey, width: 0.5.w),
              borderRadius: BorderRadius.circular(10.r),
            ),
            child: Text(
              'Create\n New\n Group',
              textAlign: TextAlign.center,
              style: fontSize16(context).copyWith(color: AppColors.themeColor),
            ),
          ),
        ),
        Gap.width(16),
        GestureDetector(
          onTap: () {},
          child: Container(
            padding: EdgeInsets.all(8.w),
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.grey, width: 0.5.w),
              borderRadius: BorderRadius.circular(10.r),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.all(6.w),
                      decoration: BoxDecoration(
                        color: Colors.grey.shade100,
                        borderRadius: BorderRadius.circular(8.r),
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: AppColors.themeColor.withOpacity(0.6),
                            width: 2.w,
                          ),
                          borderRadius: BorderRadius.circular(8.r),
                        ),
                        child: Icon(Icons.list, color: AppColors.themeColor),
                      ),
                    ),
                    Gap.width(8),
                    Text(
                      'My Task',
                      style: fontSize14(
                        context,
                      ).copyWith(fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                Gap.height(8),
                Text('100% completed', style: fontSize12(context)),
                Gap.height(4),
                SizedBox(
                  width: 120.w,
                  child: LinearProgressIndicator(value: 1),
                ),
                Gap.height(4),
                Text('1/1', style: fontSize12(context)),
              ],
            ),
          ),
        ),
      ],
    );
  }

}

