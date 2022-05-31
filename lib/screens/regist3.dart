import 'dart:core';
import 'package:flutter/material.dart';
import 'package:virtual_care/constants.dart';
import 'package:virtual_care/utilities/back_button.dart';
import 'package:virtual_care/utilities/sign_button.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class RegistScreen1 extends StatefulWidget {
  const RegistScreen1({Key? key}) : super(key: key);

  @override
  State<RegistScreen1> createState() => _RegistScreen1State();
}

class _RegistScreen1State extends State<RegistScreen1> {
  final _auth = FirebaseAuth.instance;
  final _firestone = FirebaseFirestore.instance;

  late String name;
  late String mobileNumber;
  late User loggedInUser;

  @override
  void initState() {
    getCurrentUser();
    super.initState();
  }

  void getCurrentUser() {
    try {
      final user = _auth.currentUser;
      loggedInUser = user!;
    } catch (e) {
      print(e);
    }
  }

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
                'Full Name',
                style: kSubHeader,
              ),
              const SizedBox(
                height: 10,
              ),
              TextField(
                keyboardType: TextInputType.name,
                textAlign: TextAlign.center,
                decoration: kTextFieldDecoration.copyWith(
                    hintText: 'Enter Your Full Name'),
                onChanged: (value) {
                  name = value;
                },
              ),
              const SizedBox(
                height: 30,
              ),
              const Text(
                'Mobile Number',
                style: kSubHeader,
              ),
              const SizedBox(
                height: 10,
              ),
              TextField(
                textAlign: TextAlign.center,
                decoration: kTextFieldDecoration.copyWith(
                    hintText: 'Enter Mobile Number'),
                onChanged: (value) {
                  mobileNumber = value;
                },
              ),
              const SizedBox(
                height: 30,
              ),
              SignButton(
                color: const Color(0xFF404060),
                textDisplay: 'Continue',
                onPress: () async {
                  _firestone.collection('users').doc(loggedInUser.uid).set({
                    'Phone': mobileNumber,
                    'fullName': name,
                  });
                  Navigator.pushNamed(context, '/Register2');
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
