import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  const ReusableCard({super.key, this.Colour, this.cardChild, required this.onPress});
  final Colour; // color filled in
  final Widget? cardChild;
  final Function onPress;

  @override
  Widget build(BuildContext context) {

    return GestureDetector(
      onTap: onPress != null ? () => onPress!() : null,
      child: Container(

        child: cardChild,
        margin: const EdgeInsets.all(15.0),
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colour,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}