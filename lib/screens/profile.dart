import 'package:flutter/material.dart';
import 'package:virtual_care/constants.dart';
import 'package:virtual_care/utilities/response_card2.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

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
                    'My Profile. ',
                    style: kHeaderStyle.copyWith(
                      fontSize: 45,
                    ),
                    textAlign: TextAlign.left,
                  ),
                  const Image(
                    alignment: Alignment.topLeft,
                    height: 60,
                    image: AssetImage('images/user.png'),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              '“You, yourself, as much as anybody in the entire universe, deserve your love and affection.” — Buddha',
              style: kSubHeader.copyWith(
                fontSize: 25,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              width: 150,
              height: 150,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage('images/pfp.jpg'),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.baseline,
              textBaseline: TextBaseline.alphabetic,
              children: [
                Text(
                  'Name:',
                  style: kHeaderStyle.copyWith(
                    fontSize: 30,
                  ),
                ),
                const Text(
                  'Ayush Batra',
                  textAlign: TextAlign.justify,
                  style: kNameStyle,
                ),
                const Image(
                  height: 25,
                  image: AssetImage('images/pencil.png'),
                ),
              ],
            ),
            const SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.baseline,
              textBaseline: TextBaseline.alphabetic,
              children: [
                Text(
                  'Email ID: ',
                  style: kHeaderStyle.copyWith(
                    fontSize: 25,
                  ),
                ),
                Text(
                  'bayush403@gmail.com',
                  textAlign: TextAlign.justify,
                  style: kNameStyle.copyWith(fontSize: 20),
                ),
                const Image(
                  height: 25,
                  image: AssetImage('images/pencil.png'),
                ),
              ],
            ),
            const SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.baseline,
              textBaseline: TextBaseline.alphabetic,
              children: [
                Text(
                  'Age: ',
                  style: kHeaderStyle.copyWith(
                    fontSize: 35,
                  ),
                ),
                Text(
                  '20',
                  textAlign: TextAlign.justify,
                  style: kNameStyle.copyWith(
                    fontSize: 30,
                  ),
                ),
                const SizedBox(
                  width: 30,
                )
              ],
            ),
            const SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.baseline,
              textBaseline: TextBaseline.alphabetic,
              children: [
                Text(
                  'Phone Number: ',
                  style: kHeaderStyle.copyWith(
                    fontSize: 25,
                  ),
                ),
                Text(
                  '7900094875',
                  textAlign: TextAlign.justify,
                  style: kNameStyle.copyWith(
                    fontSize: 20,
                  ),
                ),
                const Image(
                  height: 25,
                  image: AssetImage('images/pencil.png'),
                ),
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            Expanded(
              child: ReusableCard2(
                colour: const Color(0xffBAABDA),
                cardChild: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Edit Gender, Height,\nWeight, Age',
                          textAlign: TextAlign.left,
                          style: kSubHeader.copyWith(
                            fontSize: 25,
                          ),
                        ),
                        const Image(
                          height: 45,
                          image: AssetImage('images/pencil.png'),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 100,
            ),
          ],
        ),
      ),
    );
  }
}
