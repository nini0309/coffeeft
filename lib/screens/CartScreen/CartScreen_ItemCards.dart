import 'package:flutter/material.dart';
import 'package:coffeeft/sizeconfig.dart';
import 'package:coffeeft/Models/Cart_Data.dart';
import 'package:quantity_input/quantity_input.dart';

class build_CartCards extends StatefulWidget {
  const build_CartCards({
    super.key,
    required this.CartItem,
  });

  final Cart CartItem;

  @override
  State<build_CartCards> createState() => _build_CartCardsState();
}

class _build_CartCardsState extends State<build_CartCards> {
  int quantity = 1;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: getproportionatescreenwidth(10)),
      padding: EdgeInsets.symmetric(
          vertical: getproportionatescreenwidth(10),
          horizontal: getproportionatescreenheight(10)),
      decoration: BoxDecoration(
          color: Colors.grey.shade300, borderRadius: BorderRadius.circular(20)),
      child: Row(
        children: [
          SizedBox(
            width: getproportionatescreenwidth(265),
            child: AspectRatio(
              aspectRatio: 1,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey.shade900,
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                    image: AssetImage(widget.CartItem.product.imageurl),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            width: getproportionatescreenwidth(20),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: getproportionatescreenwidth(500),
                  child: Text(
                    widget.CartItem.product.Name,
                    style: TextStyle(
                      fontWeight: FontWeight.w800,
                      fontSize: 16,
                      color: Colors.black,
                    ),
                    softWrap: true,
                  ),
                ),
                SizedBox(
                  height: getproportionatescreenheight(10),
                ),
                Text(
                  "\$${widget.CartItem.product.pricing.toString()} ",
                  style: TextStyle(
                    color: Colors.brown.shade700,
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(
                  height: getproportionatescreenheight(6),
                ),
                QuantityInput(
                  value: quantity,
                  onChanged: (value) => setState(
                      () => quantity = int.parse(value.replaceAll(',', ''))),
                  buttonColor: Colors.black,
                  inputWidth: 60,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
