import 'package:flutter/material.dart';
import 'package:writing_explanation/languages/language.dart';
import 'package:writing_explanation/screens/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: translate[language]!['app']!['name']!,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Siemreap',
      ),
      home: SplashScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}