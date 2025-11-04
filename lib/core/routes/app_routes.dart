import 'package:flutter/material.dart';
import 'package:work_track/features/auth/view/onboarding_view.dart';
import 'package:work_track/features/auth/view/splash_view.dart';
import 'package:work_track/features/home/view/home_view.dart';

class AppRoutes {
  static Route<dynamic> route(RouteSettings setting) {
    late final Widget screenWidget;
    if (setting.name == SplashView.name) {
      screenWidget = SplashView();
    } else if (setting.name == HomeView.name) {
      screenWidget = HomeView();
    } else if (setting.name == OnboardingView.name) {
      screenWidget = OnboardingView();
    }

    return MaterialPageRoute(builder: (context) => screenWidget);
  }
}
