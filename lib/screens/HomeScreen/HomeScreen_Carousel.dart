import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:coffeeft/sizeconfig.dart';
import 'package:coffeeft/Models/Products.dart';
import 'package:coffeeft/constants.dart';

class Product_Carousel extends StatelessWidget {
  Product_Carousel(
      {required this.index,
      this.width = 350,
      this.aspectRatio = 1,
      required this.onpress});

  late int index;
  late double width, aspectRatio;
  late GestureTapCallback onpress;

  bool islike = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: getproportionatescreenwidth(15)),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: Colors.grey.shade300, borderRadius: BorderRadius.circular(20)),
      child: GestureDetector(
        onTap: onpress,
        child: SizedBox(
          width: getproportionatescreenwidth(width),
          child: Column(
            children: [
              AspectRatio(
                aspectRatio: aspectRatio,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.grey.shade400,
                    image: DecorationImage(
                      image: AssetImage(Items[index].imageurl),
                    ),
                  ),
                ),
              ),
              SizedBox(height: getproportionatescreenheight(5),),
              Text(
                Items[index].Name,
                style: kimptext.copyWith(
                    fontWeight: FontWeight.bold, fontSize: 15),
                maxLines: 2,
              ),
              SizedBox(height: getproportionatescreenheight(10),),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "\$${Items[index].pricing.toString()}\n6000 CFT",
                    style: TextStyle(
                        color: Colors.brown.shade700,
                        fontSize: 17,
                        fontWeight: FontWeight.bold),
                  ),
                  Container(
                      alignment: Alignment.center,
                      height: getproportionatescreenheight(35),
                      width: getproportionatescreenwidth(85),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.black,
                      ),
                      child: IconButton(
                          padding: EdgeInsets.zero,
                          splashRadius: 15,
                          onPressed: () {},
                          icon: Icon(
                            Icons.add_shopping_cart,
                            color: Colors.white,
                            size: 25,
                          )))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
