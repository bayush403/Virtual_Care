import 'package:flutter/material.dart';
import 'package:virtual_care/page_navigation.dart';
import 'package:virtual_care/screens/registration_screen2.dart';
import 'screens/initial_screen.dart';
import 'screens/login_screen.dart';
import 'screens/registration_screen.dart';
import 'screens/dashboard.dart';
import 'screens/questions.dart';
import 'screens/funZone.dart';
import 'screens/quiz.dart';
import 'screens/profile.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const FirstScreen(),
        '/Register': (context) => RegistScreen(),
        '/SignIn': (context) => const SignIn(),
        '/Register2': (context) => const Regist2(),
        '/Dashboard': (context) => const Dashboard(),
        '/Questions': (context) => const Questions(),
        '/Funzone': (context) => const Funzone(),
        '/Quiz': (context) => const Quiz(),
        '/Profile': (context) => const Profile(),
        '/MainPage': (context) => MainPage(),
      },
    );
  }
}
