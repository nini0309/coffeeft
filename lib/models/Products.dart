
class Product {
  late String Name, Description;
  late String imageurl;
  late int nft, pricing;
  late bool isfav;
  late int id;

  Product({
    required this.Name,
    required this.Description,
    required this.pricing,
    //required this.nft,
    required this.imageurl,
    this.isfav = false,
    required this.id,
  });
}

List<Product> Items = [
  Product(
    Name: "Americano with Coffee spread",
    Description: "It's more than a standard Black Coffee with a taste of blended coffee from within",
    pricing: 100,
    imageurl: "assets/Types/Americano/1.png",
    isfav: true,
    id: 1,
  ),

  Product(
    Name: "Decaf with extra Caffeine",
    Description: "It's more than a standard Black Coffee!",
    pricing: 150,
    imageurl: "assets/Types/Decaf/4.png",
    id: 2,
  ),
  Product(
    Name: "Irish with extra cream and cocoa",
    Description: "It's more than a standard Black Coffee!",
    pricing: 170,
    imageurl: "assets/Types/Irish/1.png",
    id: 3,
  ),
  Product(
    Name: "Macchiato with Chocolate flavourings",
    Description: "It's more than a standard Black Coffee!",
    pricing: 200,
    imageurl: "assets/Types/Macchiato/1.png",
    isfav: true,
    id: 4,
  ),
  Product(
    Name: "Mocha with shivered with more toppings",
    Description: "It's more than a standard Black Coffee!",
    pricing: 150,
    imageurl: "assets/Types/Mocha/1.png",
    id: 5,
  ),
];
