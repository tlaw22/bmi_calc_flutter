import 'dart:math';

import 'package:flutter/cupertino.dart';

class CalculatorBrain{
  int height;

  int weight;

  CalculatorBrain({required this.height, required this.weight});

  double calculateBMI() {
    return weight / pow(height, 2);
  }

  String getResult() {
    double bmi = calculateBMI();
    if (bmi > 25) {
      return 'Overweight';
    } else if (bmi < 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

}