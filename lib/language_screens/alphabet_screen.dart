import 'package:flutter/material.dart';

import '../models/languages.dart';
import '../models/size.dart';
import '../palette.dart';

class AlphabetScreen extends StatelessWidget {
  // ignore: constant_identifier_names
  static const String route_name = "alphabet_screen";
  const AlphabetScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int languageIndex = ModalRoute.of(context)!.settings.arguments as int;
    Size _size = Size(context);
    return Scaffold(
      appBar: AppBar(
        title:
            Text(Languages.languages[languageIndex]["arguments"]["alphabet"]),
      ),
      body: GridView(
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: _size.width(200),
            childAspectRatio: _size.width(200) / _size.height(150),
            crossAxisSpacing: _size.width(20),
            mainAxisExtent: _size.height(150),
            mainAxisSpacing: _size.height(20),
          ),
          padding: EdgeInsets.symmetric(
            vertical: _size.height(20),
            horizontal: _size.width(20),
          ),
          children: Languages.languages[languageIndex]["alphabet"]
              .map<Widget>(
                (letter) => Container(
                  decoration: BoxDecoration(
                    gradient: MyPalette.gradient,
                    borderRadius: BorderRadius.circular(
                      _size.width(25),
                    ),
                  ),
                  child: Center(
                    child: Text(
                      letter,
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                  ),
                ),
              )
              .toList()),
    );
  }
}
