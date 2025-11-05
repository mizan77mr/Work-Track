import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:work_track/core/constants/app_colors.dart';
import 'package:work_track/core/constants/assets_path/icons_path.dart';
import 'package:work_track/core/constants/assets_path/images_path.dart';
import 'package:work_track/core/themes/app_text_theme.dart';
import 'package:work_track/core/utils/gap.dart';
import 'package:work_track/features/home/view/create_task_view.dart';
import 'package:work_track/features/home/widgets/user_name_and_image_template.dart';

class IntroHomeView extends StatefulWidget {
  const IntroHomeView({super.key});

  static final String name = 'intro-home-screen';

  @override
  State<IntroHomeView> createState() => _IntroHomeViewState();
}

class _IntroHomeViewState extends State<IntroHomeView> {
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

              _buildMiddleImageAndTextSection(context),
              Spacer(),
              _buildButtonSection(context),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildButtonSection(BuildContext context) {
    return Column(
      children: [
        ElevatedButton.icon(
          onPressed: () =>
              Navigator.pushReplacementNamed(context, CreateTaskView.name),
          label: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.add, color: Colors.white),
              Gap.width(8),
              Text('Add Your First Task'),
            ],
          ),
        ),
        Gap.height(16),
        GestureDetector(
          onTap: () {},
          child: Container(
            width: double.infinity,
            padding: EdgeInsets.only(
              left: 16.w,
              right: 16.w,
              top: 8.h,
              bottom: 8.h,
            ),
            decoration: BoxDecoration(
              color: Colors.grey.shade200,
              borderRadius: BorderRadius.circular(12.r),
            ),
            child: Row(
              children: [
                Image.asset(
                  IconsPath.sparklesIcon,
                  width: 25,
                  color: AppColors.themeColor,
                ),
                Gap.width(8),
                Text(
                  'Let Your AI Assistant Summarize Your Day',
                  style: fontSize14(
                    context,
                  ).copyWith(color: AppColors.themeColor),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildMiddleImageAndTextSection(BuildContext context) {
    return Column(
      children: [
        SvgPicture.asset(ImagesPath.workTrackLogo, width: 200.w),
        Gap.height(24),
        RichText(
          text: TextSpan(
            style: fontSize24(context).copyWith(
              fontWeight: FontWeight.bold,
              color: Colors.black,
              letterSpacing: 0.1.sp,
            ),
            children: [
              TextSpan(
                text: 'Supercharge Your Productivity \n             with ',
              ),
              TextSpan(
                text: 'WorkTrack',
                style: fontSize24(context).copyWith(
                  fontWeight: FontWeight.bold,
                  color: AppColors.themeColor,
                  letterSpacing: 0.1.sp,
                ),
              ),
            ],
          ),
        ),
        Gap.height(16),
        Text(
          "You're ready to get started! Organize,track, and completed your task effortlessly",
          textAlign: TextAlign.center,
          style: fontSize16(context).copyWith(color: Colors.grey),
        ),
      ],
    );
  }
}
