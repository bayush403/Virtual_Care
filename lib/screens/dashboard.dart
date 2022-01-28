import 'package:flutter/material.dart';
import 'package:virtual_care/constants.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kFirstPageColor,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Align(
              alignment: Alignment.topLeft,
              child: Expanded(
                child: Text(
                  'Home.',
                  style: kLabelTextStyle.copyWith(
                    fontSize: 70,
                    color: Colors.black54,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Expanded(
            child: Text(
              '“You don’t have to control your thoughts. You just have to stop letting them control you.” — Dan Millman',
              style: kLabelTextStyle.copyWith(
                fontSize: 20,
                color: Colors.black54,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
