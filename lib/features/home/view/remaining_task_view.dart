import 'package:flutter/material.dart';
import 'package:work_track/features/home/widgets/task_card.dart';

class RemainingTaskView extends StatefulWidget {
  const RemainingTaskView({super.key});

  @override
  State<RemainingTaskView> createState() => _RemainingTaskViewState();
}

class _RemainingTaskViewState extends State<RemainingTaskView> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TaskCard(),
      ],
    );
  }
}

