import 'package:application/application.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:presentation/screens/counter.dart';

const Calculator calculator = MathCalculator();
void main() {
  group("Running app", () {
    testWidgets('Testing counter screen', (tester) async {
      await tester.pumpWidget(const MyApp());

      final currentCount = find.text("0");
      final currentSumButton = find.text("+");
      final currentSubtractButton = find.text("-");

      expect(currentCount, findsOneWidget);
      expect(currentSumButton, findsOneWidget);
      expect(currentSubtractButton, findsOneWidget);
    });
  });

  group("Buttons testing", () {
    testWidgets('Add number', (tester) async {
      await tester.pumpWidget(const MyApp());

      final currentCount = find.text("0");
      final currentSumButton = find.text("+");

      expect(currentCount, findsOneWidget);
      expect(currentSumButton, findsOneWidget);

      await tester.tap(currentSumButton);
      await tester.pump();

      expect(find.text('1'), findsOneWidget);
    });

    testWidgets('Removing number', (tester) async {
      await tester.pumpWidget(const MyApp());

      final currentCount = find.text("0");
      final currentSubtractButton = find.text("-");

      expect(currentCount, findsOneWidget);
      expect(currentSubtractButton, findsOneWidget);

      await tester.tap(currentSubtractButton);
      await tester.pump();

      expect(find.text('-1'), findsOneWidget);
    });
  });
}

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
