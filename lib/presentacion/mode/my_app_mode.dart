import 'package:flutter/material.dart';
import 'package:yourtravel/presentacion/utils/theme_typografy.dart';

class MyAppMode extends StatefulWidget {
  const MyAppMode({super.key});

  @override
  State<MyAppMode> createState() => _MyAppModeState();
}

class _MyAppModeState extends State<MyAppMode> {
  ThemeMode _themeMode = ThemeMode.light;

  void changeTheme() {
    setState(() {
      _themeMode =
          _themeMode == ThemeMode.light ? ThemeMode.dark : ThemeMode.light;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xffE8E8E8),
        textTheme: ThemeTypografy(mode: _themeMode),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 145, 145, 145),
              textStyle: const TextStyle(
                color: Color(0xffE8E8E8),
              )),
        ),
      ),
      darkTheme: ThemeData(
        scaffoldBackgroundColor: const Color(0xff212529),
        textTheme: ThemeTypografy(mode: _themeMode),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xffE8E8E8),
              textStyle: const TextStyle(
                color: Color(0xff2D3136),
              )),
        ),
      ),
      themeMode: _themeMode,
      title: 'SuperHuman',
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Hello World'),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: changeTheme,
                style: Theme.of(context).elevatedButtonTheme.style,
                child: Text(
                  'SuperHuman',
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
