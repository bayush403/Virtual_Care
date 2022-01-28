import 'package:flutter/material.dart';

class BackButtonCustom extends StatelessWidget {
  const BackButtonCustom({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: SizedBox(
        height: 75,
        child: TextButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Image(
            image: AssetImage('images/back.png'),
          ),
        ),
      ),
    );
  }
}
