import 'package:flutter/material.dart';

const kSignInPageColor = Color(0xFFF3D1F4);
const kFirstPageColor = Color(0xFFF5FCC1);
const kHeaderStyle = TextStyle(
  fontFamily: 'Montserrat',
  color: Color(0xFF454553),
  fontWeight: FontWeight.w800,
  fontStyle: FontStyle.normal,
  fontSize: 60.0,
);

const kSubHeader = TextStyle(
  fontFamily: 'Montserrat',
  color: Colors.black54,
  fontWeight: FontWeight.w700,
  fontStyle: FontStyle.normal,
  fontSize: 20.0,
);

const kButtonText = TextStyle(
  fontFamily: 'Montserrat',
  color: Colors.white70,
  fontWeight: FontWeight.w700,
  fontStyle: FontStyle.normal,
  fontSize: 20.0,
);

const kInactiveCardColor = Color(0xFFE4F9F5);
const kActiveCardColor = Color(0xFFFFD5E5);

const kLabelTextStyle = TextStyle(fontSize: 18.0, color: Color(0xFF8D8E98));

const kNumbersTextStyle =
    TextStyle(fontSize: 40.0, fontWeight: FontWeight.w400);

const kInactiveTab = Color(0xFF775ADA);

const kNameStyle = TextStyle(
  fontFamily: 'Nunito',
  color: Colors.black54,
  fontWeight: FontWeight.w600,
  fontStyle: FontStyle.normal,
  fontSize: 27.0,
);

const kTextFieldDecoration = InputDecoration(
  filled: true,
  fillColor: Colors.white,
  hintStyle: TextStyle(
    color: Colors.grey,
  ),
  border: OutlineInputBorder(
    borderSide: BorderSide.none,
    borderRadius: BorderRadius.all(
      Radius.circular(50),
    ),
  ),
);

const kSendButtonTextStyle = TextStyle(
  color: Colors.lightBlueAccent,
  fontWeight: FontWeight.bold,
  fontSize: 18.0,
);

const kMessageTextFieldDecoration = InputDecoration(
  contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
  hintText: 'Type your message here...',
  border: InputBorder.none,
);

const kMessageContainerDecoration = BoxDecoration(
  border: Border(
    top: BorderSide(color: Colors.lightBlueAccent, width: 2.0),
  ),
);
