import 'package:flutter/material.dart';
import 'package:virtual_care/constants.dart';

class SignButton extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  SignButton({required this.textDisplay, this.onPress, required this.color});

  final String textDisplay;
  final void Function()? onPress;
  Color color;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        decoration: BoxDecoration(
          color: color,
          borderRadius: const BorderRadius.all(
            Radius.circular(1000),
          ),
        ),
        child: Center(
          child: Text(
            textDisplay,
            style: kButtonText,
          ),
        ),
        margin: const EdgeInsets.all(10),
        height: 80.0,
        width: 300,
      ),
    );
  }
}
