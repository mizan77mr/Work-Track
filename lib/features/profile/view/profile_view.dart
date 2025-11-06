import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:work_track/core/constants/app_colors.dart';
import 'package:work_track/core/constants/assets_path/icons_path.dart';
import 'package:work_track/core/themes/app_text_theme.dart';
import 'package:work_track/core/utils/gap.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({super.key});

  static final String name = 'profile-screen';

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  int _selectedIndex=-1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('You')),
      body: Padding(
        padding: EdgeInsets.all(16.w),
        child: SafeArea(
          child: Column(
            children: [
              _buildUserNameImageAndActiveStatusSection(context),
              Gap.height(32),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _buildAutoModeMockUp(context, onTap: () {}),
                  _buildLightAndDarkModeMockup(
                    context,
                    topIconColor: Colors.black87,
                    bodyColor: Colors.white,
                    modeTitle: 'Light',
                    onTap: () {},
                  ),
                  _buildLightAndDarkModeMockup(
                    context,
                    topIconColor: Colors.white,
                    bodyColor: Colors.black87,
                    modeTitle: 'Dark',
                    onTap: () {

                    },
                  ),
                ],
              ),
              Gap.height(16),
              Divider(color: Colors.grey.shade300),
              Gap.height(24),
              _buildPushNotificationsSection(context),
              Spacer(),
              _buildElevatedButton(context),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildElevatedButton(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.white,
        foregroundColor: Colors.red,
        textStyle: fontSize14(
          context,
        ).copyWith(fontWeight: FontWeight.w500, letterSpacing: 0.1.sp),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.r),
          side: BorderSide(color: Colors.red, width: 1.w),
        ),
      ),
      onPressed: () {},
      child: Text('Sign out'),
    );
  }

  Widget _buildPushNotificationsSection(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          IconsPath.notificationIcon,
          width: 25.w,
          color: Colors.black54,
        ),
        Gap.width(16),
        Text(
          'Push Notifications',
          style: fontSize14(
            context,
          ).copyWith(fontWeight: FontWeight.bold, letterSpacing: 0.1.sp),
        ),
        Spacer(),
        Switch(value: true, onChanged: (_) {}),
      ],
    );
  }

  Widget _buildLightAndDarkModeMockup(
    BuildContext context, {
    required Color topIconColor,
    required Color bodyColor,
    required String modeTitle,
    required VoidCallback onTap,

  }) {

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: onTap,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12.r),
              border: Border.all(color: AppColors.themeColor, width: 1.5.w),
            ),
            child: Stack(
              children: [
                Container(
                  height: 80.h,
                  width: 55.h,
                  decoration: BoxDecoration(
                    color: bodyColor,
                    borderRadius: BorderRadius.circular(12.r),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 2.r,
                        offset: Offset(0, 1),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: 6.h,
                  left: 18.w,
                  child: Container(
                    height: 6.h,
                    width: 24.w,
                    decoration: BoxDecoration(
                      color: topIconColor,
                      borderRadius: BorderRadius.circular(8.r),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Gap.height(16),
        Text(
          modeTitle,
          style: fontSize14(
            context,
          ).copyWith(color: Colors.grey, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }

  Widget _buildAutoModeMockUp(BuildContext context,{required VoidCallback onTap}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: onTap,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12.r),
              border: Border.all(color: AppColors.themeColor, width: 1.5.w),
            ),
            child: Row(
              children: [
                Stack(
                  children: [
                    Container(
                      height: 80.h,
                      width: 27.w,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(12.r),
                          bottomLeft: Radius.circular(12.r),
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            blurRadius: 2.r,
                            offset: Offset(0, 1),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      top: 4.h,
                      left: 15.w,
                      child: Container(
                        height: 6.h,
                        width: 12.w,
                        decoration: BoxDecoration(
                          color: Colors.black87,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(8.r),
                            bottomLeft: Radius.circular(8.r),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Stack(
                  children: [
                    Container(
                      height: 80.h,
                      width: 27.w,
                      decoration: BoxDecoration(
                        color: Colors.black87,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(12.r),
                          bottomRight: Radius.circular(12.r),
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            blurRadius: 2.r,
                            offset: Offset(0, 1),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      top: 4.h,
                      child: Container(
                        height: 6.h,
                        width: 12.w,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(8.r),
                            bottomRight: Radius.circular(8.r),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        Gap.height(16),
        Text(
          'Auto',
          style: fontSize14(
            context,
          ).copyWith(color: Colors.grey, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }

  Widget _buildUserNameImageAndActiveStatusSection(BuildContext context) {
    return Row(
      children: [
        Stack(
          clipBehavior: Clip.none,
          children: [
            Container(
              height: 60.h,
              width: 60.w,
              decoration: BoxDecoration(
                color: Colors.brown,
                borderRadius: BorderRadius.circular(12.r),
              ),
              child: Center(
                child: Text(
                  'M',
                  style: TextStyle(fontSize: 30.sp, color: Colors.white),
                ),
              ),
            ),
            Positioned(
              top: 45.h,
              left: 48.w,
              child: Container(
                height: 16.h,
                width: 16.w,
                decoration: BoxDecoration(
                  color: Colors.green,
                  border: Border.all(color: Colors.white, width: 1.w),
                  shape: BoxShape.circle,
                ),
              ),
            ),
          ],
        ),
        Gap.width(16),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Mizanur Rahman',
              style: fontSize16(
                context,
              ).copyWith(fontWeight: FontWeight.w600, letterSpacing: 0.1.sp),
            ),
            Text(
              'Active',
              style: fontSize14(context).copyWith(color: Colors.grey),
            ),
          ],
        ),
      ],
    );
  }
}
