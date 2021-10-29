import 'dart:math';

class CalculatorBrain {
  final height, weight;
  var _bmi;
  CalculatorBrain({this.height, this.weight});
  calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  getResult() {
    if (_bmi >= 25) {
      return 'OverWeight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'UnderWeight';
    }
  }

  getInterPretation() {
    if (_bmi >= 25) {
      return 'You have a heighr than a normal body weight . Try to exercise more ';
    } else if (_bmi > 18.5) {
      return 'You have a Normal body weight . Good job ';
    } else {
      return 'You have a lower than normal body weight . you can eat a bit more ';
    }
  }
}
