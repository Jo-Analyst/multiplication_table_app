import 'package:flutter/material.dart';

class MultiplicationScreen extends StatefulWidget {
  const MultiplicationScreen({super.key});

  @override
  State<MultiplicationScreen> createState() => _MultiplicationScreenState();
}

class _MultiplicationScreenState extends State<MultiplicationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Tabuada de Multiplicação'),
      ),
    );
  }
}
