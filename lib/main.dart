import 'package:flutter/material.dart';
import 'screens/input_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  const BMICalculator({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: const Color(0xFF161B22),
          primaryColor: const Color(0xFF0A0E21),
          textTheme: Typography.whiteCupertino,
          primaryColorDark: Colors.orange,
          colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Colors.deepOrange)
      ),
      home: InputPage(),
    );
  }
}
