import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:work_track/core/constants/app_colors.dart';
import 'package:work_track/core/themes/app_text_theme.dart';
import 'package:work_track/core/utils/gap.dart';
import 'package:work_track/features/home/view/home_view.dart';
import 'package:work_track/features/home/widgets/time_picker.dart';

class CreateTaskView extends StatefulWidget {
  const CreateTaskView({super.key});

  static final String name = 'create-task-screen';

  @override
  State<CreateTaskView> createState() => _CreateTaskViewState();
}

class _CreateTaskViewState extends State<CreateTaskView> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _titleTEController = TextEditingController();
  final TextEditingController _notesTEController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Create Task',
        ),
        leading: IconButton(
          onPressed: () => Navigator.pushNamed(context, HomeView.name),
          icon: Icon(Icons.arrow_back),
        ),
    
      ),
      body: Padding(
        padding: EdgeInsets.all(16.w),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Task Group',
                style: fontSize16(context).copyWith(fontWeight: FontWeight.w600),
              ),
              Text(
                'choose or create a task for better organization',
                style: fontSize12(context).copyWith(color: Colors.grey),
              ),
              Gap.height(24),
              _buildTaskGroupAndAddButtonSection(context),
              Gap.height(16),
              _buildTextInputFieldSection(),
              Gap.height(24),
              Expanded(child: CupertinoTimePickerDemo()),
              ElevatedButton(onPressed: (){}, child: Text('Create Task'))
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTaskGroupAndAddButtonSection(BuildContext context) {
    return Column(
              children: [
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      _buildTaskGroupButton(context),
                      Gap.width(8),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.add, color: AppColors.themeColor),
                      ),
                    ],
                  ),
                ),
              ],
            );
  }

  Widget _buildTextInputFieldSection() {
    return Column(
              children: [
                TextFormField(
                  controller: _titleTEController,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(hintText: 'Enter a title'),
                ),
                Gap.height(16),
                TextFormField(
                  controller: _notesTEController,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  textInputAction: TextInputAction.done,
                  decoration: InputDecoration(
                    hintText: 'Add some notes',
                    filled: true,
                    fillColor: Colors.grey.shade50,
                  ),
                ),
              ],
            );
  }

  Widget _buildTaskGroupButton(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 6.h),
      decoration: BoxDecoration(
        color: AppColors.themeColor,
        borderRadius: BorderRadius.circular(20.r),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(Icons.list_alt_outlined, color: Colors.white),
          Gap.width(8),
          Text(
            'My Task',
            style: fontSize12(
              context,
            ).copyWith(fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
