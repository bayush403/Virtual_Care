import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:virtual_care/constants.dart';
import 'package:virtual_care/utilities/response_card.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  dynamic water = 0.00;
  dynamic sleep = 0.00;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kFirstPageColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 30.0),
              child: Row(
                children: [
                  Text(
                    'Home.',
                    style: kHeaderStyle.copyWith(
                      fontSize: 45,
                    ),
                    textAlign: TextAlign.left,
                  ),
                  const Image(
                    alignment: Alignment.topLeft,
                    height: 40,
                    image: AssetImage('images/home.png'),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              '“You don’t have to control your thoughts. You just have to stop letting them control you.”\n— Dan Millman',
              style: kSubHeader.copyWith(
                fontSize: 28,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 10,
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Row(
                children: [
                  Text(
                    'Hey!',
                    style: kHeaderStyle.copyWith(
                      fontSize: 35,
                    ),
                    textAlign: TextAlign.left,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  const Image(
                    height: 40,
                    image: AssetImage(
                      'images/hey.png',
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Expanded(
              flex: 10,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: ReusableCard(
                  onPress: () {
                    Navigator.pushNamed(context, '/Questions');
                  },
                  colour: const Color(0xFFF7E9E3),
                  cardChild: Center(
                    child: Text(
                      'How are you feeling?\nTell us about it.',
                      style: kSubHeader.copyWith(
                        fontSize: 27,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            ReusableCard(
              colour: kFirstPageColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Water Consumed',
                        style: kHeaderStyle.copyWith(
                          fontSize: 30,
                        ),
                      ),
                      const Image(
                        height: 50,
                        image: AssetImage('images/water.png'),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        water.toString(),
                        style: kSubHeader.copyWith(fontSize: 50),
                      ),
                      const Text(
                        ' Litres',
                        style: kSubHeader,
                      ),
                    ],
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
                      value: water.toDouble(),
                      onChanged: (double newValue) {
                        setState(() {
                          water = newValue.round();
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
            ReusableCard(
              colour: kFirstPageColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Hours Slept',
                        style: kHeaderStyle.copyWith(
                          fontSize: 30,
                        ),
                      ),
                      const Image(
                        height: 50,
                        image: AssetImage('images/sleep.png'),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        sleep.toString(),
                        style: kSubHeader.copyWith(
                          fontSize: 50,
                        ),
                      ),
                      const Text(
                        'Hours',
                        style: kSubHeader,
                      ),
                    ],
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
                      value: sleep.toDouble(),
                      onChanged: (double newValue) {
                        setState(() {
                          sleep = newValue.round();
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
            const SizedBox(
              height: 40,
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        notchMargin: 8,
        color: kInactiveCardColor,
        child: Row(
          children: [
            Expanded(
              child: BuildTabItem(
                const Icon(
                  FontAwesomeIcons.home,
                ),
              ),
            ),
            Expanded(
              child: BuildTabItem(
                const Icon(
                  FontAwesomeIcons.gamepad,
                ),
              ),
            ),
            Opacity(
              opacity: 0,
              child: BuildTabItem(
                const Icon(
                  FontAwesomeIcons.chartPie,
                ),
              ),
            ),
            Expanded(
              child: BuildTabItem(
                const Icon(
                  FontAwesomeIcons.chartPie,
                ),
              ),
            ),
            Expanded(
              child: BuildTabItem(
                const Icon(
                  FontAwesomeIcons.userCircle,
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: kActiveCardColor,
        onPressed: () {},
        child: const Icon(FontAwesomeIcons.paperPlane),
      ),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterDocked,
    );
  }
}

// ignore: non_constant_identifier_names
Widget BuildTabItem(Icon icon) {
  return IconButton(onPressed: () {}, icon: icon);
}
