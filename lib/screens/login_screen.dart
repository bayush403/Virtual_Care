import 'package:flutter/material.dart';
import 'package:virtual_care/constants.dart';
import 'package:virtual_care/utilities/back_button.dart';
import 'package:virtual_care/utilities/inputField.dart';
import 'package:virtual_care/utilities/sign_button.dart';

class SignIn extends StatelessWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: kSignInPageColor,
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            const BackButtonCustom(),
            const SizedBox(
              height: 40,
            ),
            const Text(
              'Sign In',
              style: kHeaderStyle,
            ),
            const SizedBox(
              height: 50,
            ),
            const Text(
              'Email ID',
              style: kSubHeader,
            ),
            InputField(
              string: 'Enter Email ID',
            ),
            const Text(
              'Password',
              style: kSubHeader,
            ),
            InputField(string: 'Enter Password'),
            SignButton(
              color: const Color(0xFF404060),
              textDisplay: 'Sign In',
              onPress: () {
                Navigator.pushNamed(context, '/Dashboard');
              },
            )
          ],
        ),
      ),
    );
  }
}
