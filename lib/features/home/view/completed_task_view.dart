import 'package:flutter/material.dart';
import 'package:work_track/features/home/widgets/task_card.dart';

class CompletedTaskView extends StatefulWidget {
  const CompletedTaskView({super.key});

  @override
  State<CompletedTaskView> createState() => _CompletedTaskViewState();
}

class _CompletedTaskViewState extends State<CompletedTaskView> {
  @override
  Widget build(BuildContext context) {
    return Column(children: [TaskCard()]);
  }
}
