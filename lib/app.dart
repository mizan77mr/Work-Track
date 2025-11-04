import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/route_manager.dart';
import 'package:work_track/core/routes/app_routes.dart';
import 'package:work_track/core/themes/app_theme.dart';
import 'package:work_track/features/auth/view/splash_view.dart';

class WorkTrack extends StatelessWidget {
  const WorkTrack({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(375, 812),
      splitScreenMode: true,
      minTextAdapt: true,
      builder: (_,child) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Work Track',
          initialRoute: SplashView.name,
          theme: AppTheme.lightTheme,
          onGenerateRoute: AppRoutes.route,
        );
      }
    );
  }
}
