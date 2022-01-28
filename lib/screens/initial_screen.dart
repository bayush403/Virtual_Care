import 'package:flutter/material.dart';
import 'package:virtual_care/constants.dart';
import 'package:virtual_care/utilities/sign_button.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kFirstPageColor,
      body: Column(
        children: [
          const SizedBox(height: 20),
          const Expanded(
            child: Image(
              image: AssetImage('icons/brain1.png'),
            ),
          ),
          const Text(
            'Virtual\nCare',
            textAlign: TextAlign.center,
            style: kHeaderStyle,
          ),
          const SizedBox(
            height: 20,
          ),
          const Center(
            child: Text(
              'Journaling your\nmind and its health',
              style: kSubHeader,
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          const Expanded(
            flex: 2,
            child: Padding(
              padding: EdgeInsets.all(2),
              child: Image(
                image: AssetImage('images/brain_heart.png'),
              ),
            ),
          ),
          SignButton(
              color: const Color(0xFF404060),
              textDisplay: 'Register Now!',
              onPress: () {
                Navigator.pushNamed(context, '/Register');
              }),
          SignButton(
            color: const Color(0xFF404060),
            textDisplay: 'Sign In',
            onPress: () {
              Navigator.pushNamed(context, '/SignIn');
            },
          )
        ],
      ),
    );
  }
}
