import 'package:flutter/material.dart';
import 'package:work_track/features/ai/view/ai_view.dart';
import 'package:work_track/features/auth/view/onboarding_view.dart';
import 'package:work_track/features/auth/view/splash_view.dart';
import 'package:work_track/features/calendar/view/calendar_view.dart';
import 'package:work_track/features/home/view/all_task_view.dart';
import 'package:work_track/features/home/view/create_task_view.dart';
import 'package:work_track/features/home/view/home_view.dart';
import 'package:work_track/features/home/view/intro_home_view.dart';
import 'package:work_track/features/main_bottom_nav/view/main_bottom_nav_view.dart';
import 'package:work_track/features/notificatios/view/notifications_view.dart';
import 'package:work_track/features/profile/view/profile_view.dart';

class AppRoutes {
  static Route<dynamic> route(RouteSettings setting) {
    late final Widget screenWidget;
    if (setting.name == SplashView.name) {
      screenWidget = SplashView();
    } else if (setting.name == HomeView.name) {
      screenWidget = HomeView();
    } else if (setting.name == IntroHomeView.name) {
      screenWidget = IntroHomeView();
    } else if (setting.name == OnboardingView.name) {
      screenWidget = OnboardingView();
    } else if (setting.name == MainBottomNavView.name) {
      screenWidget = MainBottomNavView();
    } else if (setting.name == CalendarView.name) {
      screenWidget = CalendarView();
    } else if (setting.name == AiView.name) {
      screenWidget = AiView();
    } else if (setting.name == NotificationsView.name) {
      screenWidget = NotificationsView();
    } else if (setting.name == CreateTaskView.name) {
      screenWidget = CreateTaskView();
    } else if (setting.name == AllTaskView.name) {
      screenWidget = AllTaskView();
    } else if (setting.name == ProfileView.name) {
      screenWidget = ProfileView();
    }

    return MaterialPageRoute(builder: (context) => screenWidget);
  }
}
