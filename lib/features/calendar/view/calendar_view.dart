import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:work_track/core/constants/app_colors.dart';
import 'package:work_track/core/themes/app_text_theme.dart';
import 'package:work_track/core/utils/gap.dart';

class CalendarView extends StatefulWidget {
  const CalendarView({super.key});
  static final String name = 'calendar-screen';
  @override
  State<CalendarView> createState() => _CalendarViewState();
}

class _CalendarViewState extends State<CalendarView> {
  DateTime _focusedMonth = DateTime(2025, 11, 1);
  DateTime? _selectedDate;

  List<String> weekdays = ['Sun', 'Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat'];

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_){
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final daysInMonth =
    DateUtils.getDaysInMonth(_focusedMonth.year, _focusedMonth.month);
    final firstWeekday = DateTime(_focusedMonth.year, _focusedMonth.month, 1).weekday;
    final prevPadding = (firstWeekday % 7); // Sunday = 0
    final totalCells = prevPadding + daysInMonth;

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
          child: Column(
            children: [
              // Header
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    icon: const Icon(Icons.chevron_left),
                    onPressed: () {
                      setState(() {
                        _focusedMonth = DateTime(
                          _focusedMonth.year,
                          _focusedMonth.month - 1,
                        );
                      });
                    },
                  ),
                  Text(
                    DateFormat.yMMMM().format(_focusedMonth),
                    style: fontSize18(context).copyWith(fontWeight: FontWeight.w500),
                  ),
                  IconButton(
                    icon: const Icon(Icons.chevron_right),
                    onPressed: () {
                      setState(() {
                        _focusedMonth = DateTime(
                          _focusedMonth.year,
                          _focusedMonth.month + 1,
                        );
                      });
                    },
                  ),
                ],
              ),
              Gap.height(8),

              // Weekday Row
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: weekdays
                    .map((day) => Expanded(
                  child: Center(
                    child: Text(
                      day,
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: (day == 'Fri')
                            ? AppColors.themeColor
                            : (day == 'Sat')
                            ? AppColors.themeColor
                            : Colors.black,
                      ),
                    ),
                  ),
                ))
                    .toList(),
              ),

              Gap.height(8),

              // Calendar Grid
              Expanded(
                child: GridView.builder(
                  physics:  NeverScrollableScrollPhysics(),
                  gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 7,
                    mainAxisSpacing: 6,
                    crossAxisSpacing: 6,
                  ),
                  itemCount: totalCells,
                  itemBuilder: (context, index) {
                    if (index < prevPadding) {
                      return const SizedBox();
                    }
                    final day = index - prevPadding + 1;
                    final isSelected = _selectedDate != null &&
                        _selectedDate!.day == day &&
                        _selectedDate!.month == _focusedMonth.month;

                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          _selectedDate =
                              DateTime(_focusedMonth.year, _focusedMonth.month, day);
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: isSelected
                              ? AppColors.themeColor
                              : Colors.grey.shade200,
                          borderRadius: BorderRadius.circular(12.r),
                        ),
                        child: Center(
                          child: Text(
                            '$day',
                            style: TextStyle(
                              color: isSelected ? Colors.white : Colors.grey,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
