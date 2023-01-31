import 'package:flutter/material.dart';

class DivisionScreen extends StatefulWidget {
  const DivisionScreen({super.key});

  @override
  State<DivisionScreen> createState() => _DivisionScreenState();
}

class _DivisionScreenState extends State<DivisionScreen> {
  int numberInterator = 1;
  int qtdnumber = 0;

  void performMultiplicationTables(int value) {}

  void changedNumberIterator(int value) {
    setState(() {
      numberInterator = value;
      qtdnumber = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget createContainerMultiplicationTable(int value) {
      return SingleChildScrollView(
        child: SizedBox(
          height: 300,
          child: ListView.builder(
            itemCount: qtdnumber == 0 ? 10 : 0,
            itemBuilder: (ctx, index) {
              return Container(
                margin: const EdgeInsets.only(left: 40),
                padding: const EdgeInsets.all(5),
                child: Row(
                  children: [
                    Card(
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                          vertical: 5,
                          horizontal: 15,
                        ),
                        child: Text(
                          '${(index + 1) * numberInterator}',
                          style: Theme.of(context).textTheme.headline6,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(
                        horizontal: 10,
                      ),
                      child: Text(
                        '÷',
                        style: Theme.of(context).textTheme.headline6,
                      ),
                    ),
                    Card(
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                          vertical: 5,
                          horizontal: 15,
                        ),
                        child: Text(
                          '$numberInterator',
                          style: Theme.of(context).textTheme.headline6,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(
                        horizontal: 10,
                      ),
                      child: Text(
                        '=',
                        style: Theme.of(context).textTheme.headline6,
                      ),
                    ),
                    Card(
                      elevation: 5,
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                          vertical: 5,
                          horizontal: 15,
                        ),
                        child: Text(
                          '${index + 1}',
                          style: Theme.of(context).textTheme.headline6,
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      );
    }

    Widget createButton(String number) {
      return Container(
        width: 80,
        margin: const EdgeInsets.only(left: 10, bottom: 10),
        child: TextButton(
          style: TextButton.styleFrom(
            foregroundColor: Colors.white,
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
          'Tabuada de Divisão',
          style: Theme.of(context).textTheme.headline1,
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin:
              const EdgeInsets.only(top: 20, left: 20, bottom: 0, right: 20),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 400,
                height: 325,
                padding: const EdgeInsets.only(top: 10),
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(8),
                  // border: Border.all(
                  //   width: 2,
                  // ),
                ),
                child: Column(
                  children: [
                    createContainerMultiplicationTable(1),
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
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          createButton('4'),
                          createButton('5'),
                          createButton('6'),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          createButton('7'),
                          createButton('8'),
                          createButton('9'),
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
