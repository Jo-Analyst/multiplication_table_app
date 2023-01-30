import 'package:flutter/material.dart';
import 'package:multiplication_table_app/routes/routes_screen.dart';
import 'package:multiplication_table_app/screens/multiplication_screen.dart';
import 'package:multiplication_table_app/screens/sum_screen.dart';

import 'screens/division_screen.dart';
import 'screens/subtarct_screen.dart';

main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final whichOperator = '';

  Widget _createButtonsOperator(String operator, onTap) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.only(
          top: 10,
          bottom: 10,
          left: 25,
          right: 25,
        ),
        color: Colors.white,
        child: Text(
          operator,
          style: const TextStyle(
            // backgroundColor: Colors.white,
            fontSize: 40,
          ),
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
        ).copyWith(
          secondary: Colors.amber,
        ),
      ),
      home: Builder(
        builder: (context) {
          return Scaffold(
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
                      _createButtonsOperator(
                          "+",
                          () => Navigator.of(context)
                              .pushNamed(AppRoute.appSumScreen)),
                      const SizedBox(width: 20),
                      _createButtonsOperator(
                          "-",
                          () => Navigator.of(context)
                              .pushNamed(AppRoute.appSubtractScreen))
                    ],
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      _createButtonsOperator(
                          "*",
                          () => Navigator.of(context)
                              .pushNamed(AppRoute.appMultiplicationScreen)),
                      const SizedBox(width: 20),
                      _createButtonsOperator(
                          "/",
                          () => Navigator.of(context)
                              .pushNamed(AppRoute.appDivisionScreen)),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
      routes: {
        AppRoute.appSumScreen: (ctx) => const SumScreen(),
        AppRoute.appSubtractScreen: (ctx) => const SubtractScreen(),
        AppRoute.appMultiplicationScreen: (ctx) => const MultiplicationScreen(),
        AppRoute.appDivisionScreen: (ctx) => const DivisionScreen(),
      },
    );
  }
}
