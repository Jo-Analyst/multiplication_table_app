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
        title: Text(
          'Tabuada de Adição',
          style: Theme.of(context).textTheme.headline1,
        ),
      ),
      body: Container(
        margin: const EdgeInsets.all(20),
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
            width: 330,
            height: 350,
              padding: const EdgeInsets.only(top: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(
                  color: Colors.white,
                  width: 2,
                  // style: BorderStyle.solid,
                ),
              ),
              child: Column(
                children: [
                  Title(
                      color: Theme.of(context).colorScheme.primary,
                      child: Text(
                        'Tabuada de adição',
                        style: Theme.of(context).textTheme.headline1,
                      ))
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 20),
              width: 330,
              padding: const EdgeInsets.only(top: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(
                  color: Colors.white,
                  width: 2,
                  // style: BorderStyle.solid,
                ),
              ),
              child: Column(
                children: [
                  Title(
                      color: Theme.of(context).colorScheme.primary,
                      child: Text(
                        'Tabuada de adição',
                        style: Theme.of(context).textTheme.headline1,
                      ))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
