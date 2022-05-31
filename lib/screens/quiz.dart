import 'package:flutter/material.dart';
import 'package:virtual_care/constants.dart';

class Quiz extends StatelessWidget {
  const Quiz({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kFirstPageColor,
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            const Expanded(
              child: Image(
                image: AssetImage('images/construction.png'),
              ),
            ),
            Expanded(
              child: Text(
                'This page is under construction :(',
                style: kHeaderStyle.copyWith(
                  fontSize: 50,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
