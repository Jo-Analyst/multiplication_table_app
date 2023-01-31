import 'package:flutter/material.dart';
import 'package:multiplication_table_app/routes/routes_screen.dart';
import 'package:multiplication_table_app/screens/multiplication_screen.dart';
import 'package:multiplication_table_app/screens/sum_screen.dart';

import 'screens/division_screen.dart';
import 'screens/subtract_screen.dart';

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
        width: 300,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: const Color.fromARGB(255, 240, 185, 21),
        ),
        padding: const EdgeInsets.only(
          top: 10,
          bottom: 10,
          left: 25,
          right: 25,
        ),
        // color: Colors.white,
        child: Text(
          operator,
          textAlign: TextAlign.center,
          style: const TextStyle(
            // backgroundColor: Colors.white,
            color: Color.fromARGB(255, 8, 59, 100),
            fontSize: 40,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Roboto',
        canvasColor: const Color.fromARGB(255, 240, 185, 21),
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.black87,
        ),
        textTheme: ThemeData.light().textTheme.copyWith(
              headline6: const TextStyle(
                fontFamily: "Teko",
                fontSize: 40,
              ),
              headline1: const TextStyle(
                  fontFamily: 'Roboto',
                  fontSize: 25,
                  fontWeight: FontWeight.w700,
                  color: Colors.white),
            ),
        colorScheme: ColorScheme.fromSwatch(
          primaryColorDark: Colors.black,
        ).copyWith(
          secondary: const Color.fromARGB(255, 240, 185, 21),
        ),
      ),
      home: Builder(
        builder: (context) {
          return Scaffold(
            appBar: AppBar(
              centerTitle: true,
              title: Text(
                "Vamos aprender a tabuada?",
                style: Theme.of(context).textTheme.headline1,
              ),
            ),
            body: Center(
              child: Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.green,
                ),
                width: 330,
                height: 400,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    _createButtonsOperator(
                      "Somar",
                      () => Navigator.of(context)
                          .pushNamed(AppRoute.appSumScreen),
                    ),
                    const SizedBox(height: 20),
                    _createButtonsOperator(
                      "Subtrair",
                      () => Navigator.of(context)
                          .pushNamed(AppRoute.appSubtractScreen),
                    ),
                    const SizedBox(height: 20),
                    _createButtonsOperator(
                      "Multiplicar",
                      () => Navigator.of(context)
                          .pushNamed(AppRoute.appMultiplicationScreen),
                    ),
                    const SizedBox(height: 20),
                    _createButtonsOperator(
                      "Dividir",
                      () => Navigator.of(context)
                          .pushNamed(AppRoute.appDivisionScreen),
                    ),
                  ],
                ),
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
