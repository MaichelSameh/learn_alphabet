import 'package:flutter/material.dart';

import 'arabic/arabic_home_screen.dart';
import 'bangla/bangla_home_screen.dart';
import 'english/english_alphabet_screen.dart';
import 'english/english_days_and_months_screen.dart';
import 'english/english_home_screen.dart';
import 'english/english_numbers_screen.dart';
import 'english/english_season_screen.dart';
import 'hindi/hindi_home_screen.dart';
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
        scaffoldBackgroundColor: const Color.fromRGBO(34, 34, 34, 1),
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.teal[600],
          centerTitle: true,
        ),
        textTheme: const TextTheme(
          bodyText1: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
          headline2: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
      routes: {
        HomeScreen.route_name: (_) => HomeScreen(key: const Key("home_screen")),
        ArabicHomeScreen.route_name: (_) => ArabicHomeScreen(
              key: const Key("arabic_home_screen"),
            ),
        BanglaHomeScreen.route_name: (_) => BanglaHomeScreen(
              key: const Key("bangla_home_screen"),
            ),
        EnglishHomeScreen.route_name: (_) => EnglishHomeScreen(
              key: const Key("english_home_screen"),
            ),
        EnglishAlphabetScreen.route_name: (_) => EnglishAlphabetScreen(
              key: const Key("english_alphabet_screen"),
            ),
        EnglishDaysAndMonthsScreen.route_name: (_) =>
            const EnglishDaysAndMonthsScreen(
              key: Key("english_days_and_months_screen"),
            ),
        EnglishNumbersScreen.route_name: (_) => EnglishNumbersScreen(
              key: const Key("english_numbers_screen"),
            ),
        EnglishSeasonScreen.route_name: (_) => EnglishSeasonScreen(
              key: const Key("english_season_screen"),
            ),
        HindiHomeScreen.route_name: (_) => HindiHomeScreen(
              key: const Key("hindi_home_screen"),
            ),
      },
      initialRoute: HomeScreen.route_name,
    );
  }
}
