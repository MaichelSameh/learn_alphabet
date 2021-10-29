import 'package:flutter/material.dart';

import 'palette.dart';
import 'models/languages.dart';
import 'models/size.dart';
import 'language_screens/home_screen.dart';

class HomeScreen extends StatelessWidget {
  // ignore: constant_identifier_names
  static const String route_name = "home_screen";
  const HomeScreen({Key? key}) : super(key: key);

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
          children: Languages.supported_languages
              .map<Widget>(
                (lang) => GestureDetector(
                  onTap: () {
                    Languages.playAudio(lang.title, lang.languageCode);
                    Navigator.pushNamed(
                      context,
                      LanguageHomeScreen.route_name,
                      arguments: Languages.supported_languages.indexWhere(
                        (element) => element.countryCode == lang.countryCode,
                      ),
                    );
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
