import 'package:flutter/material.dart';
import 'package:virtual_care/constants.dart';

class SignButton extends StatefulWidget {
  // ignore: use_key_in_widget_constructors
  SignButton({required this.textDisplay, this.onPress, required this.color});

  final String textDisplay;
  final void Function()? onPress;
  Color color;

  @override
  State<SignButton> createState() => _SignButtonState();
}

class _SignButtonState extends State<SignButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onPress,
      child: Container(
        decoration: BoxDecoration(
          color: widget.color,
          borderRadius: const BorderRadius.all(
            Radius.circular(1000),
          ),
        ),
        child: Center(
          child: Text(
            widget.textDisplay,
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
