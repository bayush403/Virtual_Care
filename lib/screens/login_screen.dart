import 'package:flutter/material.dart';
import 'package:virtual_care/constants.dart';
import 'package:virtual_care/utilities/back_button.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:virtual_care/utilities/sign_button.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final _auth = FirebaseAuth.instance;
  late String email;
  late String password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: kSignInPageColor,
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
                    'Sign In',
                    style: kHeaderStyle,
                  ),
                  Image(
                    height: 70,
                    image: AssetImage('images/signin.png'),
                  ),
                ],
              ),
              const SizedBox(
                height: 50,
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
                textDisplay: 'Sign In',
                onPress: () async {
                  try {
                    final user = await _auth.signInWithEmailAndPassword(
                        email: email, password: password);
                    Navigator.pushNamed(context, '/MainPage');
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
