// ignore_for_file: must_be_immutable, prefer_const_constructors_in_immutables
import 'package:flutter/material.dart';
import 'package:virtual_care/constants.dart';
import 'package:virtual_care/utilities/back_button.dart';
import 'package:virtual_care/utilities/inputField.dart';
import 'package:virtual_care/utilities/sign_button.dart';

class RegistScreen extends StatelessWidget {
  RegistScreen({Key? key}) : super(key: key);

  late String firstName;
  late String lastName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: kActiveCardColor,
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            const BackButtonCustom(),
            const SizedBox(
              height: 40,
            ),
            const Text(
              'Sign Up',
              style: kHeaderStyle,
            ),
            const SizedBox(
              height: 50,
            ),
            const Text(
              'First Name',
              style: kSubHeader,
            ),
            InputField(
              string: 'Enter First Name',
            ),
            const Text(
              'Last Name',
              style: kSubHeader,
            ),
            InputField(string: 'Enter Last Name'),
            const Text(
              'Email Address',
              style: kSubHeader,
            ),
            InputField(string: 'Enter Email Address'),
            const Text(
              'Mobile Number',
              style: kSubHeader,
            ),
            InputField(string: 'Enter Mobile Number'),
            SignButton(
              color: const Color(0xFF404060),
              textDisplay: 'Continue',
              onPress: () {
                Navigator.pushNamed(context, '/Register2');
              },
            )
          ],
        ),
      ),
    );
  }
}
