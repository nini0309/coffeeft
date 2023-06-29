import 'package:flutter/material.dart';
import 'package:coffeeft/sizeconfig.dart';

class CheckOutCard extends StatelessWidget {
  const CheckOutCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getproportionatescreenheight(275),
      padding: EdgeInsets.symmetric(
        horizontal: getproportionatescreenwidth(50),
        vertical: getproportionatescreenwidth(50),
      ),
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                'Subtotal',
                style: TextStyle(fontSize: 18),
              ),
              Spacer(),
              Text(
                "\$16",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              )
            ],
          ),
          SizedBox(
            height: getproportionatescreenheight(10),
          ),
          Row(
            children: [
              Text(
                'Taxes',
                style: TextStyle(fontSize: 18),
              ),
              Spacer(),
              Text(
                "\$2",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              )
            ],
          ),
          SizedBox(
            height: getproportionatescreenheight(6),
          ),
          Divider(
            color: Colors.white,
          ),
          SizedBox(
            height: getproportionatescreenheight(6),
          ),
          Row(
            children: [
              Text(
                'Total',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Spacer(),
              Text(
                "\$18",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              )
            ],
          ),
          SizedBox(
            height: getproportionatescreenheight(20),
          ),
          Spacer(),
          PayButton(),
          SizedBox(
            height: getproportionatescreenheight(20),
          ),
          PayWithNFT(),
        ],
      ),
    );
  }
}

class PayButton extends StatelessWidget {
  const PayButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          color: Colors.white,
        ),
        height: 50,
        width: double.infinity,
        child: Center(
          child: Text(
            'Pay Now',
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
    );
  }
}

class PayWithNFT extends StatelessWidget {
  const PayWithNFT({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Text(
        'Pay with CoffeeFT',
        style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 16,
            decoration: TextDecoration.underline,
            decorationThickness: 3),
      ),
    );
  }
}
