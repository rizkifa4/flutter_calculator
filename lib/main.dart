import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Calculator',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String screenText = '0';
  String result = '0';
  String operator = '';
  double num1 = 0;
  double num2 = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Container(
              color: Theme.of(context).primaryColor,
              child: Align(
                alignment: Alignment.centerRight,
                child: Text(
                  screenText,
                  style: Theme.of(context)
                      .textTheme
                      .headline3!
                      .copyWith(color: Colors.white),
                ),
              ),
            ),
          ),
          GridView.count(
            padding: const EdgeInsets.all(0),
            shrinkWrap: true,
            crossAxisCount: 4,
            children: [
              CalculatorButton(
                foregroundColor: Theme.of(context).primaryColorDark,
                backgroundColor: Theme.of(context).primaryColorLight,
                text: 'C',
                onTap: () {
                  setState(() {
                    screenText = '0';
                  });
                },
              ),
              CalculatorButton(
                backgroundColor: Theme.of(context).primaryColorLight,
                foregroundColor: Theme.of(context).primaryColorDark,
                text: '+/-',
                onTap: () {
                  setState(() {
                    screenText = (double.parse(screenText) * -1).toString();
                  });
                },
              ),
              CalculatorButton(
                backgroundColor: Theme.of(context).primaryColorLight,
                foregroundColor: Theme.of(context).primaryColorDark,
                text: '%',
                onTap: () {
                  setState(() {
                    screenText = (double.parse(screenText) / 100).toString();
                  });
                },
              ),
              CalculatorButton.icon(
                backgroundColor: Theme.of(context).primaryColorDark,
                foregroundColor: Theme.of(context).primaryColorLight,
                text: 'Backspace',
                icon: Icons.backspace,
                onTap: () {
                  setState(() {
                    if (screenText == '0' ||
                        screenText == '' ||
                        screenText.length == 1) {
                      screenText = '0';
                    } else {
                      screenText =
                          screenText.substring(0, screenText.length - 1);
                    }
                  });
                },
              ),
              CalculatorButton(
                foregroundColor: Theme.of(context).primaryColorDark,
                backgroundColor: Colors.white,
                text: '7',
                onTap: () {
                  setState(() {
                    if (screenText == '0') {
                      screenText = '7';
                    } else {
                      screenText += '7';
                    }
                  });
                },
              ),
              CalculatorButton(
                foregroundColor: Theme.of(context).primaryColorDark,
                backgroundColor: Colors.white,
                text: '8',
                onTap: () {
                  setState(() {
                    if (screenText == '0') {
                      screenText = '8';
                    } else {
                      screenText += '8';
                    }
                  });
                },
              ),
              CalculatorButton(
                foregroundColor: Theme.of(context).primaryColorDark,
                backgroundColor: Colors.white,
                text: '9',
                onTap: () {
                  setState(() {
                    if (screenText == '0') {
                      screenText = '9';
                    } else {
                      screenText += '9';
                    }
                  });
                },
              ),
              CalculatorButton(
                backgroundColor: Theme.of(context).primaryColorDark,
                foregroundColor: Theme.of(context).primaryColorLight,
                text: '/',
                onTap: () {
                  setState(() {
                    num1 = double.parse(screenText);
                    operator = '/';
                    screenText = '0';
                  });
                },
              ),
              CalculatorButton(
                foregroundColor: Theme.of(context).primaryColorDark,
                backgroundColor: Colors.white,
                text: '4',
                onTap: () {
                  setState(() {
                    if (screenText == '0') {
                      screenText = '4';
                    } else {
                      screenText += '4';
                    }
                  });
                },
              ),
              CalculatorButton(
                foregroundColor: Theme.of(context).primaryColorDark,
                backgroundColor: Colors.white,
                text: '5',
                onTap: () {
                  setState(() {
                    if (screenText == '0') {
                      screenText = '5';
                    } else {
                      screenText += '5';
                    }
                  });
                },
              ),
              CalculatorButton(
                foregroundColor: Theme.of(context).primaryColorDark,
                backgroundColor: Colors.white,
                text: '6',
                onTap: () {
                  setState(() {
                    if (screenText == '0') {
                      screenText = '6';
                    } else {
                      screenText += '6';
                    }
                  });
                },
              ),
              CalculatorButton(
                backgroundColor: Theme.of(context).primaryColorDark,
                foregroundColor: Theme.of(context).primaryColorLight,
                text: 'x',
                onTap: () {
                  setState(() {
                    num1 = double.parse(screenText);
                    operator = 'x';
                    screenText = '0';
                  });
                },
              ),
              CalculatorButton(
                foregroundColor: Theme.of(context).primaryColorDark,
                backgroundColor: Colors.white,
                text: '1',
                onTap: () {
                  setState(() {
                    if (screenText == '0') {
                      screenText = '1';
                    } else {
                      screenText += '1';
                    }
                  });
                },
              ),
              CalculatorButton(
                foregroundColor: Theme.of(context).primaryColorDark,
                backgroundColor: Colors.white,
                text: '2',
                onTap: () {
                  setState(() {
                    if (screenText == '0') {
                      screenText = '2';
                    } else {
                      screenText += '2';
                    }
                  });
                },
              ),
              CalculatorButton(
                foregroundColor: Theme.of(context).primaryColorDark,
                backgroundColor: Colors.white,
                text: '3',
                onTap: () {
                  setState(() {
                    if (screenText == '0') {
                      screenText = '3';
                    } else {
                      screenText += '3';
                    }
                  });
                },
              ),
              CalculatorButton(
                backgroundColor: Theme.of(context).primaryColorDark,
                foregroundColor: Theme.of(context).primaryColorLight,
                text: '-',
                onTap: () {
                  setState(() {
                    num1 = double.parse(screenText);
                    operator = '-';
                    screenText = '0';
                  });
                },
              ),
              CalculatorButton(
                foregroundColor: Theme.of(context).primaryColorDark,
                backgroundColor: Colors.white,
                text: '0',
                onTap: () {
                  setState(() {
                    if (screenText == '0') {
                      screenText = '0';
                    } else {
                      screenText += '0';
                    }
                  });
                },
              ),
              CalculatorButton(
                foregroundColor: Theme.of(context).primaryColorDark,
                backgroundColor: Theme.of(context).primaryColorLight,
                text: '.',
                onTap: () {
                  setState(() {
                    if (screenText == '0') {
                      screenText = '0.';
                    } else {
                      screenText += '.';
                    }
                  });
                },
              ),
              CalculatorButton(
                foregroundColor: Theme.of(context).primaryColorDark,
                backgroundColor: Theme.of(context).primaryColorLight,
                text: '=',
                onTap: () {
                  setState(() {
                    num2 = double.parse(screenText);
                    if (operator == '+') {
                      screenText = (num1 + num2).toString();
                    } else if (operator == '-') {
                      screenText = (num1 - num2).toString();
                    } else if (operator == 'x') {
                      screenText = (num1 * num2).toString();
                    } else if (operator == '/') {
                      screenText = (num1 / num2).toString();
                    }
                  });
                },
              ),
              CalculatorButton(
                foregroundColor: Theme.of(context).primaryColorLight,
                backgroundColor: Theme.of(context).primaryColorDark,
                text: '+',
                onTap: () {
                  setState(() {
                    num1 = double.parse(screenText);
                    operator = '+';
                    screenText = '0';
                  });
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}

// ignore: must_be_immutable
class CalculatorButton extends StatelessWidget {
  final Color backgroundColor;
  final Color foregroundColor;
  final String text;
  IconData? icon;
  final Function() onTap;

  CalculatorButton(
      {super.key,
      required this.backgroundColor,
      required this.foregroundColor,
      required this.text,
      required this.onTap});

  CalculatorButton.icon(
      {super.key,
      required this.backgroundColor,
      required this.foregroundColor,
      required this.icon,
      required this.text,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        color: backgroundColor,
        child: Center(
          child: icon == null
              ? Text(
                  text,
                  style: Theme.of(context)
                      .textTheme
                      .headline4!
                      .copyWith(color: foregroundColor),
                )
              : Icon(icon, color: foregroundColor),
        ),
      ),
    );
  }
}
