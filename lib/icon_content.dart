import 'package:flutter/material.dart';
import 'components/constants.dart';
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
        const SizedBox(
          height: 15,
        ),
        Text(
          label,
          style: kLabelTextStyle,
        ),
      ],
    );
  }

  const IconContents({super.key, required this.label, required this.icon});
}