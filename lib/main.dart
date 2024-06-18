import 'package:dynamic_color/dynamic_color.dart';
import 'package:flutter/material.dart';
import 'package:writing_explanation/languages/language.dart';
import 'package:writing_explanation/screens/splash_screen.dart';
import 'package:writing_explanation/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DynamicColorBuilder(builder: (lightColorScheme, darkColorScheme) {
      return MaterialApp(
        title: translate[language]!['app']!['name']!,
        debugShowCheckedModeBanner: false,
        home: const SplashScreen(),
        theme: ThemeData(
            useMaterial3: true,
            colorScheme: lightColorScheme ?? MaterialTheme.lightScheme()
        ),
        darkTheme: ThemeData(
            useMaterial3: true,
            colorScheme: darkColorScheme ?? MaterialTheme.darkScheme()
        ),
      );
    });
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