import 'package:flutter/material.dart';
import 'screens/input_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: Color(0xFF161B22),
          primaryColor: Color(0xFF0A0E21),
          textTheme: Typography.whiteCupertino, primaryColorDark: Colors.orange, colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Colors.deepOrange)
      ),
      home: InputPage(),
    );
  }
}
