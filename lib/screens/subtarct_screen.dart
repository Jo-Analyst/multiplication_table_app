import 'package:flutter/material.dart';

class SubtractScreen extends StatefulWidget {
  const SubtractScreen({super.key});

  @override
  State<SubtractScreen> createState() => _SubtractScreenState();
}

class _SubtractScreenState extends State<SubtractScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Tabuada de Subtração'),
      ),
    );
  }
}
