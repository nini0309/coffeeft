import 'package:flutter/material.dart';
import 'package:coffeeft/Models/Products.dart';
import 'package:coffeeft/constants.dart';
import 'DetailsScreen_Body.dart';


class DetailsPage extends StatelessWidget {
  const DetailsPage({Key? key}) : super(key: key);
  static const String id = "Details_Screen";

  @override
  Widget build(BuildContext context) {
    final Productdetails_Args arguments =
        ModalRoute.of(context)!.settings.arguments as Productdetails_Args;
    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        backgroundColor: kPrimarycolor,
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios_new,
                color: Colors.white,
                shadows: [
                  Shadow( // bottomLeft
                      offset: Offset(-1.5, -1.5),
                      color: Colors.black
                  ),
                  Shadow( // bottomRight
                      offset: Offset(1.5, -1.5),
                      color: Colors.black
                  ),
                  Shadow( // topRight
                      offset: Offset(1.5, 1.5),
                      color: Colors.black
                  ),
                  Shadow( // topLeft
                      offset: Offset(-1.5, 1.5),
                      color: Colors.black
                  ),
                ]
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: Body(
          product: arguments.product,
        ),
      ),
    );
  }
}

class Productdetails_Args {
  late Product product;

  Productdetails_Args({required this.product});
}
