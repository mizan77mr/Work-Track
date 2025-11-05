import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:work_track/core/constants/app_colors.dart';
import 'package:work_track/core/constants/assets_path/icons_path.dart';
import 'package:work_track/core/themes/app_text_theme.dart';
import 'package:work_track/core/utils/gap.dart';

class AiView extends StatefulWidget {
  const AiView({super.key});

  static final String name = 'ai-screen';

  @override
  State<AiView> createState() => _AiViewState();
}

class _AiViewState extends State<AiView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'AI Assistant',
          style: TextStyle(color: AppColors.themeColor),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.w),
        child: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              children: [
                Image.asset(
                  IconsPath.aiIcon,
                  color: AppColors.themeColor,
                  width: 35.w,
                ),
                Gap.height(16),
                Text(
                  'How can i assist today?',
                  style: fontSize16(
                    context,
                  ).copyWith(fontWeight: FontWeight.w500),
                ),
                Gap.height(8),
                Text(
                  'Try one of the suggestions below or task your own Question.',
                  style: fontSize12(context).copyWith(color: Colors.grey),
                ),
                Gap.height(24),
                _buildInstructionTask(
                  context,
                  instructionText: 'What are my pending task?',
                ),
                Gap.height(8),
                _buildInstructionTask(
                  context,
                  instructionText: 'When is my next meeting?',
                ),
                Gap.height(8),
                _buildInstructionTask(
                  context,
                  instructionText: 'Am I free this Monday?',
                ),
                Gap.height(8),
                _buildInstructionTask(
                  context,
                  instructionText: 'What are remaining in my shopping list?',
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: _buildMessageTypeSection(),
    );
  }

  Widget _buildMessageTypeSection() {
    return Padding(
      padding: EdgeInsets.only(left: 16.w, right: 16.w),
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: 'Type a message...',
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25.r),
                    borderSide: BorderSide.none,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25.r),
                    borderSide: BorderSide(color: Colors.grey, width: 1.w),
                  ),
                  filled: true,
                  fillColor: Colors.grey.shade300,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 40.h,
            child: FloatingActionButton(
              shape: CircleBorder(),
              onPressed: () {},
              child: Icon(Icons.send, color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildInstructionTask(
    BuildContext context, {
    required String instructionText,
  }) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(20.r),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            IconsPath.sparklesIcon1,
            width: 20.w,
            color: AppColors.themeColor,
          ),
          Gap.width(8),
          Text(
            instructionText,
            style: fontSize14(context).copyWith(color: AppColors.themeColor),
          ),
        ],
      ),
    );
  }
}
