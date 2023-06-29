import 'package:flutter/material.dart';
import 'package:coffeeft/sizeconfig.dart';
import 'package:coffeeft/Models/Products.dart';

class Image_Preview extends StatefulWidget {
  const Image_Preview({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  State<Image_Preview> createState() => _Image_PreviewState();
}

class _Image_PreviewState extends State<Image_Preview> {
  int SelectedImage = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      //height: getproportionatescreenheight(300),
      width: double.infinity,
      child: AspectRatio(
        aspectRatio: 1,
        child: Image.asset(widget.product.imageurl),
      ),
    );
  }
}