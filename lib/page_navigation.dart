import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:virtual_care/constants.dart';
import 'package:virtual_care/screens/dashboard.dart';
import 'package:virtual_care/screens/funZone.dart';
import 'package:virtual_care/screens/profile.dart';
import 'package:virtual_care/screens/quiz.dart';
import 'utilities/bottom_navbar.dart';

// ignore: use_key_in_widget_constructors
class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int index = 0;

  final pages = <Widget>[
    const Dashboard(),
    const Funzone(),
    const Quiz(),
    const Profile(),
  ];

  @override
  Widget build(BuildContext context) => Scaffold(
        extendBody: true,
        body: pages[index],
        bottomNavigationBar: TabBarMaterialWidget(
          index: index,
          onChangedTab: onChangedTab,
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: kActiveCardColor,
          child: const Icon(FontAwesomeIcons.paperPlane),
          onPressed: () {},
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      );

  void onChangedTab(int index) {
    setState(() {
      this.index = index;
    });
  }
}
