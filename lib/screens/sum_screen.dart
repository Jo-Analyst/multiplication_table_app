import 'package:flutter/material.dart';

class SumScreen extends StatefulWidget {
  const SumScreen({super.key});

  @override
  State<SumScreen> createState() => _SumScreenState();
}

class _SumScreenState extends State<SumScreen> {
  int numberInterator = 1;

  void changedNumberIterator(int value) {
    setState(() {
      numberInterator = value;
    });

    print(numberInterator);
  }

  @override
  Widget build(BuildContext context) {
    Widget createButton(String number) {
      return Container(
        margin: const EdgeInsets.only(left: 10, bottom: 10),
        child: TextButton(
          style: TextButton.styleFrom(
            backgroundColor: Colors.green,
            padding: const EdgeInsets.symmetric(
              vertical: 10,
              horizontal: 20,
            ),
          ),
          onPressed: () => changedNumberIterator(int.parse(number)),
          child: Text(
            number,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 23,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Tabuada de Adição',
          style: Theme.of(context).textTheme.headline1,
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.all(20),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 400,
                height: 450,
                padding: const EdgeInsets.only(top: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(
                    color: Colors.white,
                    width: 2,
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
                margin: const EdgeInsets.only(
                  top: 20,
                ),
                width: 400,
                padding: const EdgeInsets.only(
                  top: 10,
                ),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const <BoxShadow>[
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 25.0,
                        offset: Offset(0, 2),
                      ),
                    ],
                  ),
                  padding: const EdgeInsets.only(
                    top: 25,
                    left: 10,
                    right: 15,
                    bottom: 10,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          createButton('1'),
                          createButton('2'),
                          createButton('3'),
                          createButton('4'),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          createButton('5'),
                          createButton('6'),
                          createButton('7'),
                          createButton('8'),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          createButton('9'),
                          createButton('10'),
                          createButton('11'),
                          createButton('12'),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
