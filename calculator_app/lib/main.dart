import 'package:flutter/material.dart';

void main() {
  return runApp(Calculator());
}

int operator = 0,
    result,
    pressequal = 0,
    presskey = 0,
    activity,
    inputlenth,
    negative = 0;
String value = '', input = '', resultfinal = '';
int value1, value2;
double dresult;

class Calculator extends StatefulWidget {
  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'LibreBaskerville'),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFFAD1457),
          centerTitle: true,
          title: Text(
            'Calculator',
            style: TextStyle(
              fontSize: 36.0,
              color: Colors.white,
            ),
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Expanded(
                flex: 2,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Text(
                          '$input',
                          style: TextStyle(
                            fontSize: 38.0,
                          ),
                          textAlign: TextAlign.right,

                        ),
                        Text(
                          resultfinal,
                          style: TextStyle(
                            fontSize: 38.0,
                          ),

                          textAlign: TextAlign.right,
                        ),
                      ],
                    ),
                  ],
                )),
            Expanded(
              flex: 1,
              child: Row(
                children: <Widget>[
                  Expanded(
                      child: InkWell(
                    onTap: () {
                      setState(() {
                        presskey = 1;

                        if (pressequal == 1 && value2 != null) {
                          input = '';
                          value = '';
                          operator = 0;
                          pressequal = 0;
                          resultfinal = '';
                          value2 = null;
                        }

                        if (operator <= 1) {
                          inputlenth = input.length;

                          if (inputlenth == 16) {
                            input = '';
                            value = '';
                          }

                          input = input + '1';
                          value = value + '1';
                          print(value);
                        }
                      });
                    },
                    child: Container(
                      child: Text(
                        '1',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 36.0,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      color: Color(0xFFAD1457),
                      //height: 93.75,
                      alignment: Alignment.center,
                    ),
                  )),
                  Expanded(
                      child: InkWell(
                    onTap: () {
                      setState(() {
                        presskey = 1;

                        if (pressequal == 1 && value2 != null) {
                          input = '';
                          value = '';
                          operator = 0;
                          pressequal = 0;
                          resultfinal = '';
                          value2 = null;
                        }

                        if (operator <= 1) {
                          inputlenth = input.length;

                          if (inputlenth == 16) {
                            input = '';
                            value = '';
                          }

                          input = input + '2';
                          value = value + '2';
                          print(value);
                        }
                      });
                    },
                    child: Container(
                      child: Text(
                        '2',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 36.0,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      color: Color(0xFFC2185B),
                      //height: 93.75,
                      alignment: Alignment.center,
                    ),
                  )),
                  Expanded(
                      child: InkWell(
                    onTap: () {
                      setState(() {
                        presskey = 1;

                        if (pressequal == 1 && value2 != null) {
                          input = '';
                          value = '';
                          operator = 0;
                          pressequal = 0;
                          resultfinal = '';
                          value2 = null;
                        }

                        if (operator <= 1) {
                          inputlenth = input.length;

                          if (inputlenth == 16) {
                            input = '';
                            value = '';
                          }

                          input = input + '3';
                          value = value + '3';
                          print(value);
                        }
                      });
                    },
                    child: Container(
                      child: Text(
                        '3',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 36.0,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      color: Color(0xFFD81B60),
                      //height: 93.75,
                      alignment: Alignment.center,
                    ),
                  )),
                  Expanded(
                      child: InkWell(
                    onTap: () {
                      setState(() {
                        if (pressequal == 1 && value2 != null) {
                          input = '';
                          value = '';
                          operator = 0;
                          pressequal = 0;
                          resultfinal = '';
                          value2 = null;
                        }

                        if (operator == 0 && presskey == 1) {
                          input = input + '+';

                          operator = operator + 1;

                          value1 = int.parse(value);

                          print('Value 1 = $value1');

                          activity = 1;

                          value = '';
                        }
                      });
                    },
                    child: Container(
                      child: Icon(
                        Icons.add,
                        color: Colors.white,
                        size: 24.0,
                      ),
                      color: Color(0xFFE91E63),
                      //height: 93.75,
                      alignment: Alignment.center,
                    ),
                  )),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Row(
                children: <Widget>[
                  Expanded(
                      child: InkWell(
                    onTap: () {
                      setState(() {
                        presskey = 1;

                        if (pressequal == 1) {
                          input = '';
                          value = '';
                          operator = 0;
                          pressequal = 0;
                          resultfinal = '';
                          value2 = null;
                        }

                        if (operator <= 1) {
                          inputlenth = input.length;

                          if (inputlenth == 16) {
                            input = '';
                            value = '';
                          }

                          input = input + '4';
                          value = value + '4';
                          print(value);
                        }
                      });
                    },
                    child: Container(
                      child: Text(
                        '4',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 36.0,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      color: Color(0xFFE91E63),
                      //height: 93.75,
                      alignment: Alignment.center,
                    ),
                  )),
                  Expanded(
                      child: InkWell(
                    onTap: () {
                      setState(() {
                        presskey = 1;

                        if (pressequal == 1 && value2 != null) {
                          input = '';
                          value = '';
                          operator = 0;
                          pressequal = 0;
                          resultfinal = '';
                          value2 = null;
                        }

                        if (operator <= 1) {
                          inputlenth = input.length;

                          if (inputlenth == 16) {
                            input = '';
                            value = '';
                          }

                          input = input + '5';
                          value = value + '5';
                          print(value);
                        }
                      });
                    },
                    child: Container(
                      child: Text(
                        '5',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 36.0,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      color: Color(0xFFD81B60),
                      //height: 93.75,
                      alignment: Alignment.center,
                    ),
                  )),
                  Expanded(
                      child: InkWell(
                    onTap: () {
                      setState(() {
                        presskey = 1;

                        if (pressequal == 1 && value2 != null) {
                          input = '';
                          value = '';
                          operator = 0;
                          pressequal = 0;
                          resultfinal = '';
                          value2 = null;
                        }

                        if (operator <= 1) {
                          inputlenth = input.length;

                          if (inputlenth == 16) {
                            input = '';
                            value = '';
                          }

                          input = input + '6';
                          value = value + '6';
                          print(value);
                        }
                      });
                    },
                    child: Container(
                      child: Text(
                        '6',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 36.0,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      color: Color(0xFFC2185B),
                      //height: 93.75,
                      alignment: Alignment.center,
                    ),
                  )),
                  Expanded(
                      child: InkWell(
                    onTap: () {
                      setState(() {
                        if (pressequal == 1 && value2 != null) {
                          input = '';
                          value = '';
                          operator = 0;
                          pressequal = 0;
                          resultfinal = '';
                          value2 = null;
                        }

                        if (operator == 0 && presskey == 1) {
                          input = input + '-';

                          operator = operator + 1;

                          value1 = int.parse(value);

                          print('Value 1 = $value1');

                          activity = 2;

                          value = '';
                        }
                      });
                    },
                    child: Container(
                      child: Icon(
                        Icons.remove,
                        color: Colors.white,
                        size: 24.0,
                      ),
                      color: Color(0xFFAD1457),
                      //height: 93.75,
                      alignment: Alignment.center,
                    ),
                  )),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Row(
                children: <Widget>[
                  Expanded(
                      child: InkWell(
                    onTap: () {
                      setState(() {
                        presskey = 1;

                        if (pressequal == 1 && value2 != null) {
                          input = '';
                          value = '';
                          operator = 0;
                          pressequal = 0;
                          resultfinal = '';
                          value2 = null;
                        }

                        if (operator <= 1) {
                          inputlenth = input.length;

                          if (inputlenth == 16) {
                            input = '';
                            value = '';
                          }

                          input = input + '7';
                          value = value + '7';
                          print(value);
                        }
                      });
                    },
                    child: Container(
                      child: Text(
                        '7',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 36.0,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      color: Color(0xFFAD1457),
                      //height: 93.75,
                      alignment: Alignment.center,
                    ),
                  )),
                  Expanded(
                      child: InkWell(
                    onTap: () {
                      setState(() {
                        presskey = 1;
                        if (pressequal == 1 && value2 != null) {
                          input = '';
                          value = '';
                          operator = 0;
                          pressequal = 0;
                          resultfinal = '';
                          value2 = null;
                        }

                        if (operator <= 1) {
                          inputlenth = input.length;

                          if (inputlenth == 16) {
                            input = '';
                            value = '';
                          }

                          input = input + '8';
                          value = value + '8';
                          print(value);
                        }
                      });
                    },
                    child: Container(
                      child: Text(
                        '8',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 36.0,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      color: Color(0xFFC2185B),
                      //height: 93.75,
                      alignment: Alignment.center,
                    ),
                  )),
                  Expanded(
                      child: InkWell(
                    onTap: () {
                      setState(() {
                        presskey = 1;

                        if (pressequal == 1 && value2 != null) {
                          input = '';
                          value = '';
                          operator = 0;
                          pressequal = 0;
                          resultfinal = '';
                          value2 = null;
                        }

                        if (operator <= 1) {
                          inputlenth = input.length;

                          if (inputlenth == 16) {
                            input = '';
                            value = '';
                          }

                          input = input + '9';
                          value = value + '9';
                          print(value);
                        }
                      });
                    },
                    child: Container(
                      child: Text(
                        '9',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 36.0,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      color: Color(0xFFD81B60),
                      //height: 93.75,
                      alignment: Alignment.center,
                    ),
                  )),
                  Expanded(
                      child: InkWell(
                    onTap: () {
                      setState(() {
                        if (pressequal == 1 && value2 != null) {
                          input = '';
                          value = '';
                          operator = 0;
                          pressequal = 0;
                          resultfinal = '';
                          value2 = null;
                        }

                        if (operator == 0 && presskey == 1) {
                          input = input + 'x';

                          operator = operator + 1;

                          value1 = int.parse(value);

                          print('Value 1 = $value1');

                          activity = 3;

                          value = '';
                        }
                      });
                    },
                    child: Container(
                      child: Icon(
                        Icons.clear,
                        color: Colors.white,
                        size: 24.0,
                      ),
                      color: Color(0xFFE91E63),
                      //height: 93.75,
                      alignment: Alignment.center,
                    ),
                  )),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Row(
                children: <Widget>[
                  Expanded(
                      child: InkWell(
                    onTap: () {
                      setState(() {
                        presskey = 1;

                        if (pressequal == 1 && value2 != null) {
                          input = '';
                          value = '';
                          operator = 0;
                          pressequal = 0;
                          resultfinal = '';
                          value2 = null;
                        }

                        if (operator <= 1) {
                          inputlenth = input.length;

                          if (inputlenth == 16) {
                            input = '';
                            value = '';
                          }

                          input = input + '0';
                          value = value + '0';
                          print(value);
                        }
                      });
                    },
                    child: Container(
                      child: Text(
                        '0',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 36.0,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      color: Color(0xFFE91E63),
                      //height: 93.75,
                      alignment: Alignment.center,
                    ),
                  )),
                  Expanded(
                      child: InkWell(
                    onTap: () {
                      setState(() {
                        input = '';
                        value = '';
                        operator = 0;
                        pressequal = 0;
                        presskey = 0;
                        resultfinal = '';
                        value2 = null;
                      });
                    },
                    child: Container(
                      child: Text(
                        'C',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 36.0,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      color: Color(0xFFD81B60),
                      //height: 93.75,
                      alignment: Alignment.center,
                    ),
                  )),
                  Expanded(
                      child: InkWell(
                    onTap: () {
                      setState(() {
                        if (operator > 0) {
                          value2 = int.parse(value);

                          print(value2);

                          pressequal = 1;
                          presskey = 0;

                          if (activity == 1) {
                            result = (value1 + value2);

                            resultfinal = ' = ' + result.toString();

                            print('Value 2 = $value2');

                            print('Result is = $result');
                            value = '';
                          }

                          if (activity == 2) {
                            result = value1 - value2;

                            resultfinal = ' = ' + result.toString();

                            print('Value 2 = $value2');

                            print('Result is = $result');
                            value = '';
                          }

                          if (activity == 3) {
                            result = value1 * value2;

                            resultfinal = ' = ' + result.toString();

                            print('Value 2 = $value2');

                            print('Result is = $result');
                            value = '';
                          }

                          if (activity == 4) {
                            if (value2 != 0) {
                              dresult = value1 / value2;

                              resultfinal = ' = ' + dresult.toStringAsFixed(2);

                              print('Value 2 = $value2');

                              print('D Result is = $dresult');
                              value = '';
                            }

                            if (value2 == 0) {
                              resultfinal = '= Infinity';
                              value = '';
                            }
                          }
                        }
                      });
                    },
                    child: Container(
                      child: Text(
                        '=',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 36.0,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      color: Color(0xFFC2185B),
                      //height: 93.75,
                      alignment: Alignment.center,
                    ),
                  )),
                  Expanded(
                      child: InkWell(
                    onTap: () {
                      setState(() {
                        if (pressequal == 1 && value2 != null) {
                          input = '';
                          value = '';
                          operator = 0;
                          pressequal = 0;
                          resultfinal = '';
                          value2 = null;
                        }

                        if (operator == 0 && presskey == 1) {
                          input = input + '/';

                          operator = operator + 1;

                          value1 = int.parse(value);

                          print('Value 1 = $value1');

                          activity = 4;

                          value = '';
                        }
                      });
                    },
                    child: Container(
                      child: Text(
                        '/',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 36.0,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      color: Color(0xFFAD1457),
                      //height: 93.75,
                      alignment: Alignment.center,
                    ),
                  )),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
