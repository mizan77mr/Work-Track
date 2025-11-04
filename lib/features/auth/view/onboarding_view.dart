import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:work_track/core/constants/app_colors.dart';
import 'package:work_track/core/constants/assets_path/images_path.dart';
import 'package:work_track/core/themes/app_text_theme.dart';
import 'package:work_track/core/utils/gap.dart';

class OnboardingView extends StatefulWidget {
  const OnboardingView({super.key});
  static final String name = 'onboarding-screen';

  @override
  State<OnboardingView> createState() => _OnboardingViewState();
}

class _OnboardingViewState extends State<OnboardingView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(16.w),
        child: Column(
          children: [
            Gap.height(32),
            Center(child: SvgPicture.asset(ImagesPath.workLogo, width: 250.w)),
            Gap.height(16),
            Text(
              'Stay on Track, Every Day',
              style: fontSize24(context).copyWith(
                fontWeight: FontWeight.bold,
                color: AppColors.themeColor,
              ),
            ),
            Gap.height(8),
            Text(
              'Plan smart,stay focused, and achieve your goals one task at a time.',
              textAlign: TextAlign.center,
              style: fontSize16(context).copyWith(color: Colors.black54),
            ),
            Spacer(),
            SafeArea(
              child: ElevatedButton(
                onPressed: () {},
                child: Text('Get Started'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
