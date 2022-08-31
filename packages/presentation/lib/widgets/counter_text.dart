import 'package:domain/domain.dart';
import 'package:flutter/material.dart';

class CounterText extends StatefulWidget {
  final Calculator calculator;

  const CounterText({super.key, required this.calculator});

  @override
  State<CounterText> createState() => _CounterTextState();
}

class _CounterTextState extends State<CounterText> {
  int number = 0;

  void onSum() {
    setState(() {
      number = widget.calculator.plus(number, 1).toInt();
    });
  }

  void onSubtract() {
    setState(() {
      number = widget.calculator.subtract(number, 1).toInt();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('$number'),
        ElevatedButton(
          onPressed: onSum,
          child: const Text('+'),
        ),
        ElevatedButton(
          onPressed: onSubtract,
          child: const Text('-'),
        ),
      ],
    );
  }
}
