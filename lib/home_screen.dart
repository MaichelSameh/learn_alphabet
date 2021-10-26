import 'package:flutter/material.dart';

import 'palette.dart';
import 'models/language.dart';
import 'models/size.dart';
import 'english/english_home_screen.dart';
import 'arabic/arabic_home_screen.dart';
import 'Bangla/bangla_home_screen.dart';
import 'hindi/hindi_home_screen.dart';

class HomeScreen extends StatelessWidget {
  // ignore: constant_identifier_names
  static const String route_name = "home_screen";
  HomeScreen({Key? key}) : super(key: key);

  final List<LanguageInfo> languages = [
    LanguageInfo(
      countryCode: "US",
      languageCode: "en",
      title: "English",
      flag: "🇺🇸",
      route: EnglishHomeScreen.route_name,
    ),
    LanguageInfo(
      countryCode: "SA",
      languageCode: "ar",
      title: "Arabic",
      flag: "🇸🇦",
      route: ArabicHomeScreen.route_name,
    ),
    LanguageInfo(
      countryCode: "BN",
      languageCode: "bn",
      title: "Bangla",
      flag: "🇧🇩",
      route: BanglaHomeScreen.route_name,
    ),
    LanguageInfo(
      countryCode: "IN",
      languageCode: "hi",
      title: "Hindi",
      flag: "🇮🇳",
      route: HindiHomeScreen.route_name,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    Size _size = Size(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Let's Learn"),
      ),
      body: ListView(
          padding: EdgeInsets.symmetric(
            horizontal: _size.width(15),
            vertical: _size.height(15),
          ),
          children: languages
              .map<Widget>(
                (lang) => GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, lang.route);
                  },
                  child: Container(
                    alignment: Alignment.center,
                    height: _size.height(200),
                    margin: EdgeInsets.symmetric(vertical: _size.height(15)),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(_size.width(15)),
                      gradient: MyPalette.gradient,
                    ),
                    child: Text(
                      lang.title,
                      style: Theme.of(context).textTheme.headline2,
                    ),
                  ),
                ),
              )
              .toList()),
    );
  }
}
