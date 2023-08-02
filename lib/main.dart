import 'package:flutter/material.dart';
import 'package:flutter_shared_preferences/constants.dart';
import 'package:flutter_shared_preferences/home.dart';

class App extends StatelessWidget {
  final String title;
  const App({super.key, required this.title});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: title,
      home: const Home(),
      theme: ThemeData(
          primarySwatch: Colors.indigo,
          appBarTheme:
              const AppBarTheme(backgroundColor: Colors.indigo, elevation: 4),
          elevatedButtonTheme: ElevatedButtonThemeData(
              style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 24, vertical: 16)))),
    );
  }
}

void main(List<String> args) {
  runApp(const App(
    title: title,
  ));
}
