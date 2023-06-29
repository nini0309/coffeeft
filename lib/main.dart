import 'package:coffeeft/firebase_options.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:coffeeft/screens/CartScreen/Cart_Screen.dart';
import 'package:coffeeft/screens/DetailsScreen/Details_Screen.dart';
import 'package:coffeeft/screens/HomeScreen/Home_Screen.dart';
import 'package:coffeeft/screens/ProfileScreen/Profile_Screen.dart';
import 'package:coffeeft/screens/SignUpScreen/SignUp_Screen.dart';
import 'package:coffeeft/screens/loginscreen/login_screen.dart';
import 'package:coffeeft/wrapper.dart';
import 'screens/TourScreen/tour_screen.dart';
import 'theme.dart';
import 'screens/ForgotpassScreen/Forget_Screen.dart';
import 'screens/Bottom_Nav_Bar.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:coffeeft/services/auth_service.dart';
import 'package:coffeeft/sizeconfig.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [Provider(create: (_) => Auth())],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: buildThemeData(),
        home: Wrapper(),
        routes: {
          Tourscreen.id: (context) => Tourscreen(),
          LoginScreen.id: (context) => LoginScreen(),
          ForgotScreen.id: (context) => ForgotScreen(),
          SignUp.id: (context) => SignUp(),
          Home_Screen.id: (context) => Home_Screen(),
          DetailsPage.id: (context) => DetailsPage(),
          CartScreen.id: (context) => CartScreen(),
          Profile_Screen.id: (context) => Profile_Screen(),
          Bottom_Nav.id: (context) => Bottom_Nav(),
        },
      ),
    );
  }
}
