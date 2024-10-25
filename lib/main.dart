import 'package:flutter/material.dart';
import 'package:yourtravel/presentacion/yourtrip/swarn/swarn.dart';
import 'package:yourtravel/presentacion/utils/theme_typografy.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          scaffoldBackgroundColor: const Color(0xffE8E8E8),
          textTheme: const ThemeTypografy(mode: ThemeMode.dark),
          bottomNavigationBarTheme: const BottomNavigationBarThemeData(
            backgroundColor: Color(0xff212529),
            selectedItemColor: Color(0xff2D3136),
            unselectedItemColor: Color(0xffE8E8E8),
            selectedLabelStyle: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          primaryColorLight: const Color(0xff2C484D)),
      darkTheme: ThemeData(
        scaffoldBackgroundColor: const Color(0xff212529),
        textTheme: const ThemeTypografy(mode: ThemeMode.dark),
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: Color(0xff212529),
          selectedItemColor: Color(0xff2D3136),
          unselectedItemColor: Color(0xffE8E8E8),
          selectedLabelStyle: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
        primaryColorLight: const Color(0xff2C484D),
      ),
      themeMode: ThemeMode.dark,
      title: 'SuperHuman',
      home: const SwarnPage(),
    );
  }
}
