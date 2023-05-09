
import 'package:bmi_calc_flutter/screens/results_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../icon_content.dart';
import 'reusable_card.dart';
import 'constants.dart';
import '../screens/results_page.dart';
String buttonTitle = 'CALCULATE';
@immutable
class BottomButton extends StatelessWidget {

  // final Function opTap; Does not work since Flutter 2.9
  // Must be   final void Function() onTap;

  final void Function() onTap;
  final String buttonTitle;

  const BottomButton({super.key, required this.onTap, required this.buttonTitle});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center
          (child: Text(buttonTitle, style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900,
        color: Color(0xFF0E1525)),)),
        padding: EdgeInsets.only(bottom: 10),
        color: Colors.orange,
        margin: const EdgeInsets.only(top: 10.0),
        width: double.infinity,
        height: kBottomContainerHeight,
      ),
    );
  }
}
