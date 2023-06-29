import 'package:flutter/material.dart';
import 'package:coffeeft/sizeconfig.dart';

class Balance extends StatelessWidget {
  const Balance({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: getproportionatescreenheight(170),
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.black,
      ),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Row(
          children: [
            Text(
              'CoffeeFT',
              style: TextStyle(fontSize: 25),
            ),
            Spacer(),
            Container(
              //color: Colors.white,
              child: Image.asset(
                "assets/images/logo.png",
                width: 50,
              ),
            ),
          ],
        ),
        Spacer(),
        Text(
          'Total Balance',
          style: TextStyle(
            color: Colors.grey,
            fontSize: 14,
          ),
        ),
        Text(
          'CFT 5000.34',
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w600,
          ),
        ),
      ]),
    );
  }
}
