import 'package:character_listen_app/models/languages.dart';
import 'package:flutter/material.dart';

import '../models/size.dart';
import '../palette.dart';

class SeasonScreen extends StatelessWidget {
  // ignore: constant_identifier_names
  static const String route_name = "season_screen";
  const SeasonScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int languageIndex = ModalRoute.of(context)!.settings.arguments as int;
    Size _size = Size(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(Languages.languages[languageIndex]["arguments"]["seasons"]),
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
            (Languages.languages[languageIndex]["seasons"] as List<String>)
                .map<Widget>(
                  (season) => GestureDetector(
                    onTap: () {
                      Languages.playAudio(season);
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
                          season,
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
