import 'package:flutter/material.dart';

class BackButtonCustom extends StatelessWidget {
  const BackButtonCustom({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      child: Align(
        alignment: Alignment.topLeft,
        child: TextButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Image(
            height: 65,
            image: AssetImage('images/back.png'),
          ),
        ),
      ),
    );
  }
}
