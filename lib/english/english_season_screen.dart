import 'package:flutter/material.dart';

import '../models/size.dart';
import '../palette.dart';

class EnglishSeasonScreen extends StatelessWidget {
  // ignore: constant_identifier_names
  static const String route_name = "english_season_screen";
  EnglishSeasonScreen({Key? key}) : super(key: key);

  final List<String> seasons = [
    "Summer",
    "Winter",
    "Spring",
    "Autumn",
  ];

  @override
  Widget build(BuildContext context) {
    Size _size = Size(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Seasons"),
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
        children: seasons
            .map<Widget>(
              (season) => Container(
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
            )
            .toList(),
      ),
    );
  }
}
