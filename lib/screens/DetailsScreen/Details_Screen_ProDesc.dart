import 'package:flutter/material.dart';
import 'package:coffeeft/sizeconfig.dart';
import 'package:coffeeft/Models/Products.dart';
class Product_Heading extends StatefulWidget {
  const Product_Heading({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  State<Product_Heading> createState() => _Product_HeadingState();
}

class _Product_HeadingState extends State<Product_Heading> {
  late IconData _iconData = widget.product.isfav ? Icons.favorite : Icons.favorite_border;
  void toggleIcon(){
    setState(() {
      if(_iconData == Icons.favorite){
        _iconData = Icons.favorite_border;
      } else{
        _iconData = Icons.favorite;
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
          Flexible(child: Text(
            "${widget.product.Name} ",
            style: TextStyle(
              color: Colors.white,
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
            softWrap: true,
            maxLines: 2,
          ),
          ),
        LikeButton(ontap: toggleIcon, iconData: _iconData,),
      ],
    );
  }
}

class LikeButton extends StatelessWidget {
  const LikeButton({
    super.key, required this.ontap, required this.iconData,
  });

  final VoidCallback ontap;
  final IconData iconData;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(10),
      onTap: ontap,
      child: Icon(
          iconData,
          color: Colors.red,
          size: 25,
        ),
    );
  }
}

class ProductDescription extends StatefulWidget {
  const ProductDescription({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  State<ProductDescription> createState() => _ProductDescriptionState();
}

class _ProductDescriptionState extends State<ProductDescription> {
  @override
  Widget build(BuildContext context) {
    return
    Text(
        widget.product.Description,
        style: TextStyle(
          color: Colors.grey.shade100,
          fontSize: 16,
        ),
        textAlign: TextAlign.justify,
        maxLines: 4,
        overflow: TextOverflow.ellipsis,
      );
  }
}

class AddToCart extends StatelessWidget {
  const AddToCart({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          '\$${product.pricing.toString()}',
          style: TextStyle(
              fontSize: 27, color: Colors.white, fontWeight: FontWeight.bold),
        ),
        Spacer(),
        IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.add_shopping_cart,
              color: Colors.white,
              size: 40,
            ))
      ],
    );
  }
}
