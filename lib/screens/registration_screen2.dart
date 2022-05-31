// ignore_for_file: use_key_in_widget_constructors, avoid_print

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:virtual_care/utilities/back_button.dart';
import 'package:virtual_care/utilities/card_content.dart';
import 'package:virtual_care/utilities/response_card.dart';
import 'package:virtual_care/utilities/sign_button.dart';
import '../constants.dart';

enum Gender {
  male,
  female,
}

class Regist2 extends StatefulWidget {
  const Regist2({Key? key}) : super(key: key);

  @override
  _Regist2State createState() => _Regist2State();
}

class _Regist2State extends State<Regist2> {
  Gender? selectedGender;
  final _firestone = FirebaseFirestore.instance;
  final _auth = FirebaseAuth.instance;
  late User loggedInUser;
  late int height = 120;
  late String gender;
  late int weight = 60;
  late int age = 25;

  @override
  void initState() {
    super.initState();
    getCurrentUser();
    print(loggedInUser.email);
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
        padding: const EdgeInsets.fromLTRB(10, 20, 10, 10),
        child: Column(
          children: [
            const BackButtonCustom(),
            Expanded(
              flex: 4,
              child: Row(
                children: [
                  Expanded(
                    child: ReusableCard(
                      onPress: () {
                        setState(() {
                          selectedGender = Gender.male;
                        });
                        gender = 'male';
                      },
                      colour: selectedGender == Gender.male
                          ? kActiveCardColor
                          : kInactiveCardColor,
                      cardChild: const CardContent(
                          cardText: 'MALE', cardIcon: FontAwesomeIcons.mars),
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      onPress: () {
                        setState(() {
                          selectedGender = Gender.female;
                        });
                        gender = 'female';
                      },
                      colour: selectedGender == Gender.female
                          ? kActiveCardColor
                          : kInactiveCardColor,
                      cardChild: const CardContent(
                        cardText: 'FEMALE',
                        cardIcon: FontAwesomeIcons.venus,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 2,
              child: ReusableCard(
                colour: kActiveCardColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'HEIGHT',
                      style: kSubHeader,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(
                          height.toString(),
                          style: kNumbersTextStyle,
                        ),
                        const Text(
                          'cm',
                          style: kSubHeader,
                        ),
                      ],
                    ),
                    SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                          inactiveTrackColor: const Color(0xFF404060),
                          activeTrackColor: kInactiveCardColor,
                          thumbColor: kInactiveCardColor,
                          overlayColor: const Color(0x29EB1555),
                          thumbShape: const RoundSliderThumbShape(
                              enabledThumbRadius: 17),
                          overlayShape:
                              const RoundSliderOverlayShape(overlayRadius: 30)),
                      child: Slider(
                        value: height.toDouble(),
                        onChanged: (double newValue) {
                          setState(() {
                            height = newValue.round();
                          });
                          print(newValue);
                        },
                        min: 120.0,
                        max: 220.0,
                        inactiveColor: const Color(0xFF8D8E98),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 3,
              child: Row(
                children: [
                  Expanded(
                    child: ReusableCard(
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            'WEIGHT',
                            style: kLabelTextStyle.copyWith(
                              fontSize: 30,
                            ),
                          ),
                          Text(
                            weight.toString(),
                            style: kNumbersTextStyle,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              RoundIconButton(
                                icon: FontAwesomeIcons.minus,
                                onPressed: (() {
                                  setState(() {
                                    weight--;
                                  });
                                }),
                              ),
                              const SizedBox(
                                width: 15.0,
                              ),
                              RoundIconButton(
                                  icon: FontAwesomeIcons.plus,
                                  onPressed: (() {
                                    setState(() {
                                      weight++;
                                    });
                                  })),
                            ],
                          )
                        ],
                      ),
                      colour: kActiveCardColor,
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            'AGE',
                            style: kLabelTextStyle.copyWith(
                              fontSize: 30,
                            ),
                          ),
                          Text(
                            age.toString(),
                            style: kNumbersTextStyle,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              RoundIconButton(
                                icon: FontAwesomeIcons.minus,
                                onPressed: (() {
                                  setState(() {
                                    age--;
                                  });
                                }),
                              ),
                              const SizedBox(
                                width: 15.0,
                              ),
                              RoundIconButton(
                                icon: FontAwesomeIcons.plus,
                                onPressed: (() {
                                  setState(() {
                                    age++;
                                  });
                                }),
                              ),
                            ],
                          )
                        ],
                      ),
                      colour: kActiveCardColor,
                    ),
                  ),
                ],
              ),
            ),
            SignButton(
                color: const Color(0xFF404060),
                textDisplay: 'Done!',
                onPress: () {
                  _firestone.collection('users').doc(loggedInUser.uid).update({
                    'Email': loggedInUser.email,
                    'Age': age,
                    'Gender': gender,
                    'Height': height,
                    'Weight': weight,
                  });
                  Navigator.pushNamed(context, '/MainPage');
                }),
          ],
        ),
      ),
    );
  }
}

class RoundIconButton extends StatelessWidget {
  const RoundIconButton({required this.icon, this.onPressed});

  final IconData icon;
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
        child: Icon(icon),
        onPressed: onPressed,
        elevation: 6.0,
        constraints: const BoxConstraints.tightFor(
          width: 56.0,
          height: 56.0,
        ),
        shape: const CircleBorder(),
        fillColor: const Color(0xFF404060));
  }
}
