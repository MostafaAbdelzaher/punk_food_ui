import 'package:flutter/material.dart';
import 'package:food_app/screens/home/home_screen.dart';

import 'constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Food App",
      theme: ThemeData(
        appBarTheme: const AppBarTheme(backgroundColor: kPrimaryColor),
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: Colors.white,
        textTheme: const TextTheme(
          bodyText1: TextStyle(color: kSecondaryColor),
          bodyText2: TextStyle(color: kSecondaryColor),
        ),
      ),
      home: const HomeScreen(),
    );
  }
}
