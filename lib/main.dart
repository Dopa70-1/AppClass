import 'package:app_class/screens/onboarding_screen.dart';
import 'package:app_class/screens/welcome_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFF38B6FF),
        brightness: Brightness.light,
        primaryColor: const Color(0xFF38B6FF),
        fontFamily: 'Arapey',
        textTheme: const TextTheme(
          headline1: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold, fontFamily: 'Montserrat', color: Color(0xFFEEEEEE)),
          headline2: TextStyle(fontSize: 48.0, fontFamily: 'Montserrat', color: Color(0xFFEEEEEE), letterSpacing: 15.0),
          headline3: TextStyle(fontSize: 48.0, color: Color(0xFF222831)),
          headline4: TextStyle(fontSize: 16.0, color: Color(0xFF222831), letterSpacing: 10.0),
          headline6: TextStyle(fontSize: 11.0, color: Color(0xFF222831)),
          bodyText1: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold, color: Color(0xFF222831)),
          bodyText2: TextStyle(fontSize: 18.0, color: Color(0xFF222831)),
        ),
      ),
      home: const WelcomeScreen(),
    );
  }
}
