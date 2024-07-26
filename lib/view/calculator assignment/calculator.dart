import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:math_expressions/math_expressions.dart'; // Add this dependency

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  String _displayText = '0'; // Holds the value to be displayed on the screen

  void _updateDisplay(String text) {
    setState(() {
      // Handle display updates
      if (_displayText == '0') {
        _displayText = text;
      } else {
        _displayText += text;
      }
    });
  }

  void _handleButtonTap(String text) {
    setState(() {
      switch (text) {
        case 'C':
          _displayText = '0';
          break;
        case 'DEL':
          if (_displayText.isNotEmpty) {
            _displayText = _displayText.substring(0, _displayText.length - 1);
            if (_displayText.isEmpty) _displayText = '0'; // Reset to 0 if empty
          }
          break;
        case '=':
          _displayText = _evaluateExpression(_displayText);
          break;
        default:
          if (_displayText == '0') {
            _displayText = text;
          } else {
            _displayText += text;
          }
          break;
      }
    });
  }

  String _evaluateExpression(String expression) {
    try {
      expression = expression.replaceAll('x', '*');
      Parser p = Parser();
      Expression exp = p.parse(expression);
      ContextModel cm = ContextModel();
      double eval = exp.evaluate(EvaluationType.REAL, cm);
      return eval.toString();
    } catch (e) {
      return 'Error';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculator"),
        backgroundColor: Colors.grey,
        leading: Icon(Icons.calculate, size: 40),
        elevation: 10.0,
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            SizedBox(height: 150),
            Container(
              alignment: Alignment.centerRight,
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Text(
                _displayText,
                style: TextStyle(fontSize: 60.0),
              ),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(8.0),
                child: GridView.count(
                  crossAxisCount: 4,
                  crossAxisSpacing: 8.0,
                  mainAxisSpacing: 8.0,
                  children: [
                    CalculatorButton(text: 'C', color: Colors.black, onTap: () => _handleButtonTap('C')),
                    CalculatorButton(text: '%', color: Colors.black, onTap: () => _handleButtonTap('%')),
                    CalculatorButton(text: 'DEL', color: Colors.black, onTap: () => _handleButtonTap('DEL')),
                    CalculatorButton(text: '/', color: Colors.black, onTap: () => _handleButtonTap('/')),
                    CalculatorButton(text: '7', onTap: () => _handleButtonTap('7')),
                    CalculatorButton(text: '8', onTap: () => _handleButtonTap('8')),
                    CalculatorButton(text: '9', onTap: () => _handleButtonTap('9')),
                    CalculatorButton(text: 'x', color: Colors.black, onTap: () => _handleButtonTap('x')),
                    CalculatorButton(text: '4', onTap: () => _handleButtonTap('4')),
                    CalculatorButton(text: '5', onTap: () => _handleButtonTap('5')),
                    CalculatorButton(text: '6', onTap: () => _handleButtonTap('6')),
                    CalculatorButton(text: '-', color: Colors.black, onTap: () => _handleButtonTap('-')),
                    CalculatorButton(text: '1', onTap: () => _handleButtonTap('1')),
                    CalculatorButton(text: '2', onTap: () => _handleButtonTap('2')),
                    CalculatorButton(text: '3', onTap: () => _handleButtonTap('3')),
                    CalculatorButton(text: '+', color: Colors.black, onTap: () => _handleButtonTap('+')),
                    CalculatorButton(text: '00', onTap: () => _handleButtonTap('00')),
                    CalculatorButton(text: '0', onTap: () => _handleButtonTap('0')),
                    CalculatorButton(text: '.', onTap: () => _handleButtonTap('.')),
                    CalculatorButton(text: '=', color: Colors.black, onTap: () => _handleButtonTap('=')),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CalculatorButton extends StatelessWidget {
  final String text;
  final Color color;
  final VoidCallback onTap;

  CalculatorButton({required this.text, this.color = Colors.grey, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Text(
          text,
          style: TextStyle(
            color: Colors.white,
            fontSize: 24.0,
          ),
        ),
      ),
    );
  }
}
