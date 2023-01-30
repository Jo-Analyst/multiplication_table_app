import 'package:flutter/material.dart';

class SumScreen extends StatefulWidget {
  const SumScreen({super.key});

  @override
  State<SumScreen> createState() => _SumScreenState();
}

class _SumScreenState extends State<SumScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Tabuada de Adição'),
      ),
    );
  }
}
