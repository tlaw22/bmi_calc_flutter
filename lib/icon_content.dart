import 'package:flutter/material.dart';
const labelTextStyle = TextStyle(
  fontSize: 18,
  color: Color(0xFF8D898),);
class IconContents extends StatelessWidget {

  final IconData icon;
  final String label;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: 50,
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          label,
          style: labelTextStyle,
        ),
      ],
    );
  }

  IconContents({required this.label, required this.icon});
}