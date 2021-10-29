import 'package:flutter/material.dart';

import '../models/languages.dart';
import '../models/size.dart';
import '../palette.dart';

class NumbersScreen extends StatelessWidget {
  // ignore: constant_identifier_names
  static const String route_name = "numbers_screen";
  const NumbersScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    int languageIndex = ModalRoute.of(context)!.settings.arguments as int;
    Size _size = Size(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(Languages.languages[languageIndex]["arguments"]["numbers"]),
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
        children:
            (Languages.languages[languageIndex]["numbers"] as List<String>)
                .map<Widget>(
                  (number) => GestureDetector(
                    onTap: () {
                      Languages.playAudio(number);
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        gradient: MyPalette.gradient,
                        borderRadius: BorderRadius.circular(
                          _size.width(25),
                        ),
                      ),
                      child: Center(
                        child: Text(
                          number,
                          style: Theme.of(context).textTheme.bodyText1,
                        ),
                      ),
                    ),
                  ),
                )
                .toList(),
      ),
    );
  }
}
