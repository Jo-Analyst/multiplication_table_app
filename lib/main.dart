import 'package:flutter/material.dart';

main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  Widget _createButtonsOperator(String operator) {
    return TextButton(
      onPressed: null,
      style: TextButton.styleFrom(
        backgroundColor: Colors.white,
      ),
      child: Text(
        operator,
        style: const TextStyle(
          color: Colors.black,
          fontSize: 30,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          fontFamily: 'Roboto',
          canvasColor: Colors.amber,
          appBarTheme: const AppBarTheme(backgroundColor: Colors.black87),
          textTheme: ThemeData.light().textTheme.copyWith(
                headline1: const TextStyle(
                  fontFamily: "Teko",
                  fontSize: 20,
                ),
              ),
          colorScheme: ColorScheme.fromSwatch(
            primaryColorDark: Colors.black,
          ).copyWith(secondary: Colors.amber)),
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            "Vamos aprender a tabuada?",
            style: TextStyle(fontSize: 20),
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _createButtonsOperator("+"),
                  const SizedBox(width: 20),
                  _createButtonsOperator("-")
                ],
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _createButtonsOperator("*"),
                  const SizedBox(width: 20),
                  _createButtonsOperator("/"),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
