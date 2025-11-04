import 'package:flutter/material.dart';

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
      body: Center(child: Text('AI View')),
    );
  }
}