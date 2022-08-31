import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:presentation/widgets/counter_text.dart';

class CounterScreen extends StatelessWidget {
  final Calculator calculator;

  const CounterScreen({super.key, required this.calculator});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter'),
      ),
      body: CounterText(calculator: calculator),
    );
  }
}
