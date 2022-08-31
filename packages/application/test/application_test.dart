import 'package:application/application.dart';
import 'package:domain/domain.dart';
import 'package:test/test.dart';

void main() {
  final Calculator calculator = MathCalculator();
  test('calculator', () {
    expect(calculator.plus(1, 2), 3);
    expect(calculator.subtract(1, 2), -1);
    expect(calculator.multiply(1, 2), 2);
    expect(calculator.divide(1, 2), 0.5);
  });
}
