import 'package:flutter/material.dart';
import 'package:test1/second_home_screen.dart';
import 'first_home_screen.dart';
import 'third_home_screen.dart';
import 'package:google_fonts/google_fonts.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: FirstHomeScreen.routeName,
        routes: {
          FirstHomeScreen.routeName: (context) => FirstHomeScreen(),
          SecondHomeScreen.routeName: (context) => SecondHomeScreen(),
          ThirdHomeScreen.routeName: (context) => ThirdHomeScreen(),
        }

    );
  }
}
