// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:virtual_care/constants.dart';

class CardContent extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  const CardContent({this.cardText, this.cardIcon});

  final IconData? cardIcon;
  final String? cardText;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          cardIcon,
          size: 80.0,
        ),
        const SizedBox(height: 15.0),
        Text(
          cardText!,
          style: kSubHeader,
        ),
      ],
    );
  }
}
