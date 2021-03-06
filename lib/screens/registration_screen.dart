import 'dart:core';
import 'package:flutter/material.dart';
import 'package:virtual_care/constants.dart';
import 'package:virtual_care/utilities/back_button.dart';
import 'package:virtual_care/utilities/sign_button.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class RegistScreen extends StatefulWidget {
  const RegistScreen({Key? key}) : super(key: key);

  @override
  State<RegistScreen> createState() => _RegistScreenState();
}

class _RegistScreenState extends State<RegistScreen> {
  final _auth = FirebaseAuth.instance;
  final _firestone = FirebaseFirestore.instance;

  late String name;

  late String email;

  late String password;

  late String mobileNumber;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kActiveCardColor,
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const BackButtonCustom(),
              const SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Text(
                    'Sign Up',
                    style: kHeaderStyle,
                  ),
                  Image(
                    height: 90,
                    image: AssetImage('images/signup.png'),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              const Text(
                'Email',
                style: kSubHeader,
              ),
              const SizedBox(
                height: 10,
              ),
              TextField(
                keyboardType: TextInputType.emailAddress,
                textAlign: TextAlign.center,
                decoration: kTextFieldDecoration.copyWith(
                    hintText: 'Enter Your Email ID'),
                onChanged: (value) {
                  email = value;
                },
              ),
              const SizedBox(
                height: 30,
              ),
              const Text(
                'Password',
                style: kSubHeader,
              ),
              const SizedBox(
                height: 10,
              ),
              TextField(
                obscureText: true,
                textAlign: TextAlign.center,
                decoration: kTextFieldDecoration.copyWith(
                    hintText: 'Enter Your Password'),
                onChanged: (value) {
                  password = value;
                },
              ),
              const SizedBox(
                height: 30,
              ),
              SignButton(
                color: const Color(0xFF404060),
                textDisplay: 'Continue',
                onPress: () async {
                  try {
                    final newUser = await _auth.createUserWithEmailAndPassword(
                        email: email, password: password);
                    Navigator.pushNamed(context, '/Regist3');
                  } catch (e) {
                    print(e);
                  }
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
