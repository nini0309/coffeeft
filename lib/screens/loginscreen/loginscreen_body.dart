import 'package:flutter/material.dart';
import 'package:coffeeft/sizeconfig.dart';
import 'Form_Login.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Column(
          children: [
            SizedBox(
              height: getproportionatescreenheight(30),
            ),
            Text(
              "Welcome back!",
              style: TextStyle(
                color: Colors.brown,
                fontSize: 30,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: getproportionatescreenheight(30),
            ),
            Buildform(),
          ],
        ),
      ),
    );
  }
}
