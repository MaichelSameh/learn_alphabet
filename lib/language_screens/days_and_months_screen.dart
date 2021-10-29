import 'package:flutter/material.dart';

import '../models/languages.dart';
import '../models/size.dart';
import '../palette.dart';

class DaysAndMonthsScreen extends StatefulWidget {
  // ignore: constant_identifier_names
  static const String route_name = "days_and_months_screen";
  const DaysAndMonthsScreen({Key? key}) : super(key: key);

  @override
  State<DaysAndMonthsScreen> createState() => _DaysAndMonthsScreenState();
}

class _DaysAndMonthsScreenState extends State<DaysAndMonthsScreen> {
  bool isDay = true;
  @override
  Widget build(BuildContext context) {
    int languageIndex = ModalRoute.of(context)!.settings.arguments as int;
    Size _size = Size(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          Languages.languages[languageIndex]["arguments"]["days_and_months"],
        ),
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
          children: (Languages.languages[languageIndex]
                  [isDay ? "days" : "months"] as List<String>)
              .map<Widget>(
                (day) => GestureDetector(
                  onTap: () {
                    Languages.playAudio(day);
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
                        day,
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                    ),
                  ),
                ),
              )
              .toList()),
      bottomNavigationBar: Container(
        margin: EdgeInsets.only(top: _size.height(10)),
        height: _size.height(70),
        width: double.infinity,
        decoration: BoxDecoration(
          color: MyPalette.primary_color,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(_size.width(25)),
            topRight: Radius.circular(_size.width(25)),
          ),
        ),
        child: Row(
          children: [
            GestureDetector(
              onTap: () {
                Languages.playAudio(
                  Languages.languages[languageIndex]["day"],
                );
                setState(() {
                  isDay = true;
                });
              },
              child: Container(
                alignment: Alignment.center,
                width: _size.screenWidth() / 2,
                child: Text(
                  Languages.languages[languageIndex]["day"],
                  style: Theme.of(context).textTheme.bodyText1!.copyWith(
                        color: isDay ? Colors.black45 : Colors.white,
                      ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Languages.playAudio(
                    Languages.languages[languageIndex]["month"]);
                setState(() {
                  isDay = false;
                });
              },
              child: Container(
                alignment: Alignment.center,
                width: _size.screenWidth() / 2,
                child: Text(
                  Languages.languages[languageIndex]["month"],
                  style: Theme.of(context).textTheme.bodyText1!.copyWith(
                        color: !isDay ? Colors.black45 : Colors.white,
                      ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
