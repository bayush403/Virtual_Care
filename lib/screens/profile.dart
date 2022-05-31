import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:virtual_care/constants.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Profile extends StatefulWidget {
  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  final _auth = FirebaseAuth.instance;
  final _firestone = FirebaseFirestore.instance;
  late User loggedInUser;
  String? fullName;
  Future<Map>? dataMap;
  int? age;
  int? height;
  int? weight;
  String? gender;
  String? mobile;

  Future<Map> getUserInfo() async {
    DocumentSnapshot _documentSnapshot =
        await _firestone.collection('users').doc(loggedInUser.uid).get();
    var data = _documentSnapshot.data() as Map;
    fullName = await data["fullName"];
    age = await data["Age"];
    height = await data["Height"];
    weight = await data["Weight"];
    gender = await data["Gender"];
    mobile = await data["Phone"];

    return data;
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
  void initState() {
    super.initState();
    getCurrentUser();
    dataMap = getUserInfo();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: getUserInfo(),
        builder: (context, snapshot) {
          return Scaffold(
            backgroundColor: kFirstPageColor,
            body: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: SingleChildScrollView(
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
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Name:',
                                style: kHeaderStyle.copyWith(
                                  fontSize: 30,
                                ),
                              ),
                              Text(
                                fullName!,
                                textAlign: TextAlign.justify,
                                style: kNameStyle.copyWith(fontSize: 20),
                              )
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 10,
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
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Email ID: ',
                                style: kHeaderStyle.copyWith(
                                  fontSize: 25,
                                ),
                              ),
                              Text(
                                '${loggedInUser.email}',
                                textAlign: TextAlign.justify,
                                style: kNameStyle.copyWith(fontSize: 20),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 10,
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
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Age: ',
                                style: kHeaderStyle.copyWith(
                                  fontSize: 35,
                                ),
                              ),
                              Text(
                                age.toString(),
                                textAlign: TextAlign.justify,
                                style: kNameStyle.copyWith(
                                  fontSize: 30,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 35,
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Phone Number: ',
                                style: kHeaderStyle.copyWith(
                                  fontSize: 25,
                                ),
                              ),
                              Text(
                                mobile.toString(),
                                textAlign: TextAlign.justify,
                                style: kNameStyle.copyWith(
                                  fontSize: 20,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        const Image(
                          height: 25,
                          image: AssetImage('images/pencil.png'),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Gender:',
                                style: kHeaderStyle.copyWith(
                                  fontSize: 30,
                                ),
                              ),
                              Text(
                                '3',
                                textAlign: TextAlign.justify,
                                style: kNameStyle,
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 10,
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
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Height:',
                                style: kHeaderStyle.copyWith(
                                  fontSize: 30,
                                ),
                              ),
                              Text(
                                height.toString(),
                                textAlign: TextAlign.justify,
                                style: kNameStyle,
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 10,
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
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Weight:',
                                style: kHeaderStyle.copyWith(
                                  fontSize: 30,
                                ),
                              ),
                              Text(
                                weight.toString(),
                                textAlign: TextAlign.justify,
                                style: kNameStyle,
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 10,
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
                    const SizedBox(
                      height: 100,
                    ),
                  ],
                ),
              ),
            ),
          );
        });
  }
}
