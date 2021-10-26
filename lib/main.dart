import 'package:flutter/material.dart';

import 'home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: const Color.fromRGBO(44, 44, 44, 1),
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.teal[600],
        ),
        textTheme: const TextTheme(
          headline2: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
      routes: {
        HomeScreen.route_name: (_) => HomeScreen(key: const Key("home_screen")),
      },
      initialRoute: HomeScreen.route_name,
    );
  }
}
