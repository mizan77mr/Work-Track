
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:work_track/core/constants/app_colors.dart';
import 'package:work_track/core/themes/app_text_theme.dart';
import 'package:work_track/features/profile/view/profile_view.dart';

class UserNameAndImageTemplate extends StatelessWidget {
  const UserNameAndImageTemplate({
    super.key,
    required this.context,
  });

  final BuildContext context;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Hello',
              style: fontSize16(context).copyWith(color: Colors.grey),
            ),
            Text(
              'Mizanur Rahman',
              style: fontSize20(context).copyWith(fontWeight: FontWeight.bold),
            ),
          ],
        ),
        GestureDetector(
          onTap: ()=>Navigator.pushNamed(context, ProfileView.name
          ),
          child: CircleAvatar(
            radius: 25.r,
            backgroundColor: AppColors.themeColor,
            child: Icon(Icons.person, size: 32.r, color: Colors.white),

          ),
        ),
      ],
    );
  }
}