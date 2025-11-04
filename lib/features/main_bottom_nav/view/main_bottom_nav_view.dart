import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:work_track/core/constants/app_colors.dart';
import 'package:work_track/core/constants/assets_path/icons_path.dart';
import 'package:work_track/features/ai/view/ai_view.dart';
import 'package:work_track/features/calender/view/calendar_view.dart';
import 'package:work_track/features/home/view/intro_home_view.dart';
import 'package:work_track/features/notificatios/view/notifications_view.dart';

class MainBottomNavView extends StatefulWidget {
  const MainBottomNavView({super.key});
  static final String name = 'main-bottom-nav-screen';

  @override
  State<MainBottomNavView> createState() => _MainBottomNavViewState();
}

class _MainBottomNavViewState extends State<MainBottomNavView> {
  int _currentIndex = 0;

  final List<Widget> _screens = [
    const IntroHomeView(),
    const CalendarView(),
    const AiView(),
    const NotificationsView(),
  ];

  @override
  Widget build(BuildContext context) {
    Color selectedColor = AppColors.themeColor; // Theme color for selected icon
    Color unselectedColor = Colors.grey; // Unselected icon color

    return Scaffold(
      body: _screens[_currentIndex],
      bottomNavigationBar: NavigationBar(
        height: 65,
        backgroundColor: Colors.grey.shade50,
        indicatorColor: Colors.transparent,
        selectedIndex: _currentIndex,
        indicatorShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.r),
        ),
        onDestinationSelected: (int index) {
          setState(() => _currentIndex = index);
        },

        destinations: [
          _buildNavItem(IconsPath.homeIcon, 0, selectedColor, unselectedColor),
          _buildNavItem(
            IconsPath.calenderIcon,

            1,
            selectedColor,
            unselectedColor,
          ),
          _buildNavItem(
            IconsPath.sparklesIcon,

            2,
            selectedColor,
            unselectedColor,
          ),
          _buildNavItem(
            IconsPath.notificationIcon,

            3,
            selectedColor,
            unselectedColor,
          ),
        ],
      ),
    );
  }

  NavigationDestination _buildNavItem(
    String assetPath,

    int index,
    Color selectedColor,
    Color unselectedColor,
  ) {
    final bool isSelected = _currentIndex == index;

    return NavigationDestination(
      label: '',
      icon: Stack(
        alignment: Alignment.topCenter,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 6.0),
            child: Image.asset(
              assetPath,
              width: 28.w,
              color: isSelected ? selectedColor : unselectedColor,
            ),
          ),
          // Small circular indicator above icon
          if (isSelected)
            Positioned(
              top: 0,
              child: Container(
                width: 32.w,
                height: 4.h,
                decoration: BoxDecoration(
                  color: selectedColor,

                  borderRadius: BorderRadius.circular(4.r),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
