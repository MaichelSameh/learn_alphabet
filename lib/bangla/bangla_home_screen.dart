import 'package:flutter/material.dart';

import '../models/size.dart';
import '../palette.dart';
import '../english/english_alphabet_screen.dart';
import '../english/english_days_and_months_screen.dart';
import '../english/english_numbers_screen.dart';
import '../english/english_season_screen.dart';

class BanglaHomeScreen extends StatelessWidget {
  // ignore: constant_identifier_names
  static const String route_name = "bangla_home_screen";
  BanglaHomeScreen({Key? key}) : super(key: key);
  final Map<String, String> arguments = {
    "Alphabet": EnglishAlphabetScreen.route_name,
    "Days and Months": EnglishDaysAndMonthsScreen.route_name,
    "Numbers": EnglishNumbersScreen.route_name,
    "Seasons": EnglishSeasonScreen.route_name,
  };
  @override
  Widget build(BuildContext context) {
    Size _size = Size(context);
    return Scaffold(
      appBar: AppBar(title: const Text("English")),
      body: ListView(
          padding: EdgeInsets.symmetric(
            horizontal: _size.width(15),
            vertical: _size.height(15),
          ),
          children: arguments.keys
              .map<Widget>(
                (argument) => GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, arguments[argument]!);
                  },
                  child: Container(
                    height: _size.height(200),
                    margin: EdgeInsets.symmetric(vertical: _size.height(15)),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(_size.width(15)),
                      gradient: MyPalette.gradient,
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 5,
                          spreadRadius: 3,
                          offset: const Offset(2, 2),
                          color: MyPalette.primary_color.withOpacity(0.2),
                        ),
                      ],
                    ),
                    child: Text(
                      argument,
                      style: Theme.of(context).textTheme.headline2,
                    ),
                  ),
                ),
              )
              .toList()),
    );
  }
}
