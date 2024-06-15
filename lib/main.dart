import 'package:day_16/Pages/cart_page.dart';
import 'package:day_16/Pages/home_page.dart';
import 'package:day_16/Pages/login_page.dart';
import 'package:day_16/utils/routes.dart';
import 'package:day_16/widgets/themes.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // brigVegetables();
    // brigVegetables(thaila: true, rupess: 50);

    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: MyTheme.lightTheme(context),

      // darkTheme: ThemeData(
      //   brightness: Brightness.dark,
      // ),

      debugShowCheckedModeBanner: false,
      initialRoute: MyRoutes.homeRoute,
      routes: {
        "/": (context) => LoginPage(),
        MyRoutes.homeRoute: (context) => HomePage(),
        MyRoutes.loginRoute: (context) => LoginPage(),
        MyRoutes.cartRounte: (context) => CartPage(),
      },
    );
  }

  // brigVegetables({bool thaila = false, int rupess = 100}) {
  //   // brigVegetables({@required bool thaila = false, int rupess = 100}){
  //   //Take Cycle

  //   //Go to Market
  // }
}
