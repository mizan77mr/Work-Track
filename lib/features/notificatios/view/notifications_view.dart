import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:work_track/core/themes/app_text_theme.dart';
import 'package:work_track/core/utils/gap.dart';

class NotificationsView extends StatefulWidget {
  const NotificationsView({super.key});

  static final String name = 'notifications-screen';

  @override
  State<NotificationsView> createState() => _NotificationsViewState();
}

class _NotificationsViewState extends State<NotificationsView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Notifications')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,

        children: [Center(child: _buildNotificationInstruction(context))],
      ),
    );
  }

  Widget _buildNotificationInstruction(BuildContext context) {
    return Column(
      children: [
        Icon(Icons.notifications_none_rounded, color: Colors.grey, size: 50.sp),
        Gap.height(16),
        Text(
          'No notifications yet',
          style: fontSize16(context).copyWith(color: Colors.grey),
        ),
        Gap.height(8),
        Text(
          "We'll notify you when something new arrives",
          style: fontSize10(context).copyWith(color: Colors.grey),
        ),
      ],
    );
  }
}
