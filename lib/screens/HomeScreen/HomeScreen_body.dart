import 'package:flutter/material.dart';
import 'package:coffeeft/constants.dart';
import 'package:coffeeft/screens/DetailsScreen/Details_Screen.dart';
import 'package:coffeeft/sizeconfig.dart';
import 'HomeScreen_Header.dart';
import 'HomeScreen_Banner.dart';
import 'package:coffeeft/Models/Products.dart';
import 'HomeScreen_Carousel.dart';
import 'HomeScreen_TextField.dart';
import 'Nft_balance.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: getproportionatescreenwidth(40),),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HomeHeader(),
            SizedBox(
              height: getproportionatescreenheight(15),
            ),
            Balance(),
            SizedBox(
              height: getproportionatescreenheight(15),
            ),
            TextFieldHome(),
            SizedBox(
              height: getproportionatescreenheight(20),
            ),
            Text(
              "Offers",
              style: TextStyle(
                  color: Colors.brown,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: getproportionatescreenwidth(20),
            ),
            //CoffeeTypes(),
            HomeScreenBanner("Coffee this season is", "at flat 20% off!"),
            SizedBox(
              height: getproportionatescreenheight(20),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Popular",
                  style: TextStyle(
                      color: Colors.brown,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  "See More",
                  style: kimptext.copyWith(
                      fontWeight: FontWeight.w400,
                      decoration: TextDecoration.underline,
                      fontSize: 12),
                ),
              ],
            ),
            SizedBox(
              height: getproportionatescreenheight(10),
            ),
            SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ...List.generate(
                    Items.length,
                    (index) => Product_Carousel(
                        index: index,
                        onpress: () => Navigator.pushNamed(
                            context, DetailsPage.id,
                            arguments:
                                Productdetails_Args(product: Items[index]))),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: getproportionatescreenheight(10),
            ),
            //HomeScreenBanner("Coffee this season is", "at flat 20% off!"),
          ],
        ),
      ),
    );
  }
}
