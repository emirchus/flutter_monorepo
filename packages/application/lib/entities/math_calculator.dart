import 'package:domain/domain.dart';

class MathCalculator extends Calculator {

  const MathCalculator();

  @override
  num divide(num a, num b) {
    return a / b;
  }

  @override
  num multiply(num a, num b) {
    return a * b;
  }

  @override
  num subtract(num a, num b) {
    return a - b;
  }

  @override
  num plus(num a, num b) {
    return a + b;
  }
}
