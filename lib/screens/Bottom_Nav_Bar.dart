import 'package:flutter/material.dart';
import 'package:coffeeft/constants.dart';
import 'package:coffeeft/screens/ProfileScreen/Profile_Screen.dart';
import 'package:coffeeft/screens/CartScreen/Cart_Screen.dart';
import 'package:coffeeft/screens/HomeScreen/Home_Screen.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:coffeeft/sizeconfig.dart';
import 'package:coffeeft/screens/MenuScreen/MenuScreen.dart';
import 'package:coffeeft/screens/LikeScreen/LikeScreen.dart';


class Bottom_Nav extends StatefulWidget {
  const Bottom_Nav({Key? key}) : super(key: key);

  static const String id = "Bottom_Nav";

  @override
  State<Bottom_Nav> createState() => _Bottom_NavState();
}

class _Bottom_NavState extends State<Bottom_Nav> {
  int _selectedIndex = 0;
  final List<Widget> _pages = [
    Home_Screen(),
    MenuScreen(),
    CartScreen(),
    LikeScreen(),
    Profile_Screen(),
  ];

  void _onitemtapped(int index){
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.grey.shade900,
      body: _pages[_selectedIndex],
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: Colors.black,
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: getproportionatescreenwidth(20),
            vertical: getproportionatescreenheight(10),
          ),
          child: GNav(
            backgroundColor: Colors.black,
            color: Colors.white,
            activeColor: Colors.white,
            gap: 8,
            tabBackgroundColor: Colors.grey.shade900,
            padding: EdgeInsets.all(12),
            selectedIndex: _selectedIndex,
            onTabChange: _onitemtapped,
            tabs: [
              GButton(
                icon: Icons.home_outlined,
                text: "Home",
              ),
              GButton(
                icon: Icons.coffee,
                text: "Menu",
              ),
              GButton(
                icon: Icons.shopping_cart_outlined,
                text: "Cart",
              ),
              GButton(
                icon: Icons.favorite_border,
                text: "Likes",
              ),
              GButton(
                icon: Icons.person_outline,
                text: "Profile",
              ),
            ],
          ),
        ),
      ),
    );
  }
}


