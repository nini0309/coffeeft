import 'package:flutter/material.dart';
import 'package:coffeeft/Models/Products.dart';
import 'package:coffeeft/sizeconfig.dart';
import 'DetailsScreen_ImagePrev.dart';
import 'Details_Screen_ProDesc.dart';

class Body extends StatelessWidget {
  Body({super.key, required this.product});

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image_Preview(product: product),
        Expanded(
          child: Container(
            color: Colors.black,
            padding: EdgeInsets.symmetric(
              horizontal: getproportionatescreenwidth(50),
              vertical: getproportionatescreenwidth(50),
            ),
            width: double.infinity,
            child: Column(
              //crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Product_Heading(product: product),
                SizedBox(
                  height: getproportionatescreenheight(20),
                ),
                ProductDescription(product: product),
                Spacer(),
                AddToCart(product: product),
                SizedBox(
                  height: getproportionatescreenheight(20),
                ),
                GestureDetector(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      color: Colors.white,
                    ),
                    height: 50,
                    width: double.infinity,
                    child: Center(
                      child: Text(
                        'Buy Now',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  onTap: () {},
                ),
                SizedBox(
                  height: getproportionatescreenheight(20),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Text(
                    'Buy Now with CoffeeFT',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        decoration: TextDecoration.underline,
                        decorationThickness: 3),
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
