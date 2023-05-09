import 'dart:math';

import 'package:flutter/cupertino.dart';

class CalculatorBrain {
  int height;

  int weight;

  CalculatorBrain({required this.height, required this.weight});
//     _bmi = weight / pow(height / 100, 2);
  double calculateBMI() {
    return weight / pow(height, 2) / 100;
  }

  String getResult() {
    double _bmi = calculateBMI();
    if (_bmi > 25) {
      return 'Overweight';
    } else if (_bmi < 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getInterpretation() {
    double _bmi = calculateBMI();
    if (_bmi >= 25) {
      return 'You have a higher than normal body weight. Try to eat less Mc\'CHicken\'s.';
    } else if (_bmi >= 18.5) {
      return 'You have a normal body weight. Good job!';
    } else {
      return 'You have a lower than normal body weight. You can eat a bit more.';
    }
  }
}
