import 'package:flutter/material.dart';

class ReusableCard2 extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  const ReusableCard2({required this.colour, this.cardChild, this.onPress});

  final Color colour;
  final Widget? cardChild;
  final void Function()? onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        width: double.infinity,
        child: cardChild,
        margin: const EdgeInsets.all(1.0),
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(20.0),
        ),
      ),
    );
  }
}
