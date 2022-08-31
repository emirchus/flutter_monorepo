import 'package:application/application.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:presentation/screens/counter.dart';

void main() {
  runApp(const MyApp());
}

const Calculator calculator = MathCalculator();

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const CounterScreen(calculator: calculator),
    );
  }
}
