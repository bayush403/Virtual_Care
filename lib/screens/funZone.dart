import 'package:flutter/material.dart';
import 'package:virtual_care/constants.dart';
import 'package:virtual_care/utilities/response_card2.dart';

class Funzone extends StatelessWidget {
  const Funzone({Key? key}) : super(key: key);

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
                    'FunZone! ',
                    style: kHeaderStyle.copyWith(
                      fontSize: 45,
                    ),
                    textAlign: TextAlign.left,
                  ),
                  const Image(
                    alignment: Alignment.topLeft,
                    height: 60,
                    image: AssetImage('images/funzone.png'),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              '“You don’t have to be positive all the time. It’s perfectly okay to feel sad, angry, annoyed, frustrated, scared and anxious. Having feelings doesn’t make you a negative person. It makes you human.”\n— Lori Deschene',
              style: kSubHeader.copyWith(
                fontSize: 20,
              ),
              textAlign: TextAlign.center,
            ),
            Expanded(
              child: ReusableCard2(
                colour: const Color(0xffD77FA1),
                cardChild: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Movies',
                        style: kHeaderStyle.copyWith(fontSize: 40),
                      ),
                      const Image(
                        height: 100,
                        image: AssetImage('images/popcorn.png'),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child: ReusableCard2(
                colour: const Color(0xffBAABDA),
                cardChild: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Games',
                        style: kHeaderStyle.copyWith(fontSize: 40),
                      ),
                      const Image(
                        height: 100,
                        image: AssetImage('images/game.png'),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child: ReusableCard2(
                colour: const Color(0xffD6E5FA),
                cardChild: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Physical\nActivities',
                        style: kHeaderStyle.copyWith(fontSize: 40),
                      ),
                      const Image(
                        height: 100,
                        image: AssetImage('images/exercises.png'),
                      )
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 80,
            ),
          ],
        ),
      ),
    );
  }
}
