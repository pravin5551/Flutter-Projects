import 'package:flutter/material.dart';
import 'package:flutter_simple_calculator/flutter_simple_calculator.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Calculator'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(18.0),
          child: SizedBox(
            width: double.infinity,
            child: CalcButton(),
          ),
        ),
      ),
    );
  }
}

class CalcButton extends StatefulWidget {
  @override
  _CalcButtonState createState() => _CalcButtonState();
}

class _CalcButtonState extends State<CalcButton> {
  double _currentValue = 0;
  @override
  Widget build(BuildContext context) {
    var calc = SimpleCalculator(
      value: _currentValue,
      hideExpression: false,
      hideSurroundingBorder: true,
      onChanged: (key, value, expression) {
        setState(() {
          _currentValue = value;
        });
        print("$key\t$value\t$expression");
      },
      onTappedDisplay: (value, details) {
        print("$value\t${details.globalPosition}");
      },
      theme: const CalculatorThemeData(
        borderColor: Colors.black54,
        borderWidth: 2,
        displayColor: Colors.black,
        expressionStyle: const TextStyle(fontSize: 25, color: Colors.white),
        operatorColor: Colors.black87,
        displayStyle: const TextStyle(fontSize: 80, color: Colors.white),
        expressionColor: Colors.black87,
        operatorStyle: const TextStyle(fontSize: 25, color: Colors.orange),
        commandColor: Colors.black87,
        commandStyle: const TextStyle(fontSize: 25, color: Colors.indigoAccent),
        numColor: Colors.black87,
        numStyle: const TextStyle(fontSize: 25, color: Colors.white),
      ),
    );
    return OutlineButton(
      child: Text(_currentValue.toString()),
      onPressed: () {
        showModalBottomSheet(
            isScrollControlled: true,
            context: context,
            builder: (BuildContext context) {
              return SizedBox(
                  height: MediaQuery.of(context).size.height * 0.75,
                  child: calc);
            });
      },
    );
  }
}