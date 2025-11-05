import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:work_track/core/constants/app_colors.dart';
import 'package:work_track/core/themes/app_text_theme.dart';
import 'package:work_track/core/utils/gap.dart';
import 'package:work_track/features/home/view/completed_task_view.dart';
import 'package:work_track/features/home/view/remaining_task_view.dart';

class AllTaskView extends StatefulWidget {
  const AllTaskView({super.key});

  static final String name = 'all-task-screen';

  @override
  State<AllTaskView> createState() => _AllTaskViewState();
}

class _AllTaskViewState extends State<AllTaskView> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(title: Text('My Task')),
        body: Column(
          children: [
            TabBar(
              dividerColor: Colors.grey.shade300,
              labelPadding: EdgeInsetsGeometry.all(12.w),
              labelStyle: fontSize14(
                context,
              ).copyWith(fontWeight: FontWeight.w400, letterSpacing: 0.1.sp),
              labelColor: AppColors.themeColor,
              unselectedLabelColor: Colors.grey,
              tabs: [Text('Remaining'), Text('Competed')],
            ),
            Expanded(
              child: TabBarView(
                children: [RemainingTaskView(), CompletedTaskView()],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
