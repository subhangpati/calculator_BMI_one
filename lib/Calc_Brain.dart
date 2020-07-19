import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({this.height, this.weight});

  final int weight;
  final int height;
  double _bmi;

  String CalculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getInterpret() {
    if (_bmi >= 25) {
      return 'YOU SHOULD CONSIDER EATING A BIT LESS THAN USUAL OTHERWISE FINE IT\'S YOUR LIFE';
    } else if (_bmi >= 18.5) {
      return 'YOU ARE OKAY , JUST KEEP WORKING OUT';
    } else {
      return 'YOU SHOULD EATING SOMETHING FRO STARTERS';
    }
  }
}
