import 'package:flutter/material.dart';
import 'package:coffeeft/sizeconfig.dart';
import 'package:coffeeft/Models/Cart_Data.dart';
import 'CartScreen_ItemCards.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: getproportionatescreenwidth(40),
      ),
        child: ListView.builder(
          itemCount: ItemsList.length,
          itemBuilder: (context, index) => Dismissible(
            onDismissed: (direction){
              setState(() {
                ItemsList.removeAt(index);
              });
            },
            key: Key(ItemsList[index].product.id.toString()),
            background: Container(
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Icon(
                    Icons.delete,
                    size: 40,
                  ),
                  SizedBox(
                    width: getproportionatescreenwidth(60),
                  ),
                ],
              ),
            ),
            child: build_CartCards(
              CartItem: ItemsList[index],
            ),
          ),
        ),
      );
  }
}
