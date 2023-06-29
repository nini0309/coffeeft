import 'package:coffeeft/Models/Products.dart';

class Cart{
  final Product product;
  final int Numbers;

  Cart({ required this.product, required this.Numbers});
}

//Demo product for Carts
List<Cart> ItemsList = [
  Cart(product: Items[0], Numbers: 2),
  Cart(product: Items[3], Numbers: 4),
  Cart(product: Items[4], Numbers: 1),
];