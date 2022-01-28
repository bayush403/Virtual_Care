import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:virtual_care/utilities/back_button.dart';
import 'package:virtual_care/utilities/card_content.dart';
import 'package:virtual_care/utilities/response_card.dart';
import 'package:virtual_care/utilities/sign_button.dart';
import '../constants.dart';

enum Condition {
  happy,
  excited,
  optimistic,
  dissatisfied,
  sad,
}

class Questions extends StatefulWidget {
  const Questions({Key? key}) : super(key: key);

  @override
  _QuestionsState createState() => _QuestionsState();
}

class _QuestionsState extends State<Questions> {
  dynamic feeling = 0.00;
  Condition? selectedCondition;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kFirstPageColor,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Column(children: [
            const BackButtonCustom(),
            Row(
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'How are you feeling?',
                    style: kHeaderStyle.copyWith(
                      fontSize: 28,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                const Align(
                  alignment: Alignment.topCenter,
                  child: Image(
                    height: 55,
                    image: AssetImage('images/question.png'),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Expanded(
              child: ReusableCard(
                onPress: () {
                  setState(() {
                    selectedCondition = Condition.happy;
                  });
                },
                colour: selectedCondition == Condition.happy
                    ? kActiveCardColor
                    : kInactiveCardColor,
                cardChild: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Happy',
                        style: kSubHeader.copyWith(
                          fontSize: 40,
                        ),
                      ),
                      const Align(
                        child: Image(
                          height: 50,
                          image: AssetImage('images/happy.png'),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child: ReusableCard(
                onPress: () {
                  setState(() {
                    selectedCondition = Condition.excited;
                  });
                },
                colour: selectedCondition == Condition.excited
                    ? kActiveCardColor
                    : kInactiveCardColor,
                cardChild: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Excited',
                        style: kSubHeader.copyWith(
                          fontSize: 40,
                        ),
                      ),
                      const Align(
                        child: Image(
                          height: 50,
                          image: AssetImage('images/excited.png'),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child: ReusableCard(
                onPress: () {
                  setState(() {
                    selectedCondition = Condition.optimistic;
                  });
                },
                colour: selectedCondition == Condition.optimistic
                    ? kActiveCardColor
                    : kInactiveCardColor,
                cardChild: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Optimistic',
                        style: kSubHeader.copyWith(
                          fontSize: 35,
                        ),
                      ),
                      const Align(
                        child: Image(
                          height: 50,
                          image: AssetImage('images/optimistic.png'),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child: ReusableCard(
                onPress: () {
                  setState(() {
                    selectedCondition = Condition.dissatisfied;
                  });
                },
                colour: selectedCondition == Condition.dissatisfied
                    ? kActiveCardColor
                    : kInactiveCardColor,
                cardChild: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Dissatisfied',
                        style: kSubHeader.copyWith(
                          fontSize: 35,
                        ),
                      ),
                      const Align(
                        child: Image(
                          height: 50,
                          image: AssetImage('images/dissatisfied.png'),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child: ReusableCard(
                onPress: () {
                  setState(() {
                    selectedCondition = Condition.sad;
                  });
                },
                colour: selectedCondition == Condition.sad
                    ? kActiveCardColor
                    : kInactiveCardColor,
                cardChild: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Sad',
                        style: kSubHeader.copyWith(
                          fontSize: 40,
                        ),
                      ),
                      const Align(
                        child: Image(
                          height: 50,
                          image: AssetImage('images/sad.png'),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            ReusableCard(
              colour: kFirstPageColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'How intense is this feeling?',
                    style: kHeaderStyle.copyWith(
                      fontSize: 30,
                    ),
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                        activeTrackColor: kSignInPageColor,
                        thumbColor: kInactiveCardColor,
                        overlayColor: const Color(0x29EB1555),
                        thumbShape:
                            const RoundSliderThumbShape(enabledThumbRadius: 17),
                        overlayShape:
                            const RoundSliderOverlayShape(overlayRadius: 30)),
                    child: Slider(
                      value: feeling.toDouble(),
                      onChanged: (double newValue) {
                        setState(() {
                          feeling = newValue.round();
                        });
                      },
                      min: 0.00,
                      max: 20.00,
                      inactiveColor: const Color(0xFF8D8E98),
                    ),
                  )
                ],
              ),
            ),
            SignButton(
              textDisplay: 'Submit Update',
              color: const Color(0xFF404060),
              onPress: () {
                Navigator.pop(context);
              },
            ),
          ]),
        ));
  }
}
