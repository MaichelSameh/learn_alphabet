import 'package:flutter/material.dart';

import '../models/languages.dart';
import '../../models/size.dart';
import '../../palette.dart';
import 'alphabet_screen.dart';
import 'days_and_months_screen.dart';
import 'numbers_screen.dart';
import 'season_screen.dart';

class LanguageHomeScreen extends StatelessWidget {
  // ignore: constant_identifier_names
  static const String route_name = "language_home_screen";
  const LanguageHomeScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    int languageIndex = ModalRoute.of(context)!.settings.arguments as int;
    Size _size = Size(context);
    Map<String, String> arguments =
        Languages.languages[languageIndex]["arguments"] as Map<String, String>;
    return Scaffold(
        appBar: AppBar(
          title: Text(Languages.languages[languageIndex]["title"]),
        ),
        body: ListView(
          padding: EdgeInsets.symmetric(
            horizontal: _size.width(15),
            vertical: _size.height(15),
          ),
          children: arguments.keys
              .map<Widget>(
                (key) => GestureDetector(
                  onTap: () {
                    Languages.playAudio(arguments[key]!);

                    Navigator.pushNamed(
                      context,
                      key == "alphabet"
                          ? AlphabetScreen.route_name
                          : key == "days_and_months"
                              ? DaysAndMonthsScreen.route_name
                              : key == "numbers"
                                  ? NumbersScreen.route_name
                                  : SeasonScreen.route_name,
                      arguments: languageIndex,
                    );
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
                      arguments[key]!,
                      style: Theme.of(context).textTheme.headline2,
                    ),
                  ),
                ),
              )
              .toList(),
        ));
  }
}
