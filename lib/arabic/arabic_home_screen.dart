import 'package:flutter/material.dart';

import '../models/size.dart';
import '../palette.dart';
import 'arabic_alphabet_screen.dart';
import 'arabic_days_and_months_screen.dart';
import 'arabic_numbers_screen.dart';
import 'arabic_season_screen.dart';

class ArabicHomeScreen extends StatelessWidget {
  // ignore: constant_identifier_names
  static const String route_name = "arabic_home_screen";
  ArabicHomeScreen({Key? key}) : super(key: key);
  final Map<String, String> arguments = {
    "الحروف الأبجدية": ArabicAlphabetScreen.route_name,
    "أيام و شهور": ArabicDaysAndMonthsScreen.route_name,
    "الارقام": ArabicNumbersScreen.route_name,
    "فصول السنة": ArabicSeasonScreen.route_name,
  };
  @override
  Widget build(BuildContext context) {
    Size _size = Size(context);
    return Scaffold(
      appBar: AppBar(title: const Text("العربية")),
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
