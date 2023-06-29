import 'package:flutter/material.dart';
import 'package:coffeeft/constants.dart';
import 'ProfileScreen_Body.dart';

class Profile_Screen extends StatelessWidget {
  const Profile_Screen({Key? key}) : super(key: key);

  static const String id = "Profile_Screen";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: kPrimarycolor,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Text(
            "Your Profile",
            style: TextStyle(
              color: Colors.brown,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: true,
        ),
        body: Body(),
      ),
    );
  }
}
