import 'package:flutter/material.dart';

import '../models/size.dart';
import '../palette.dart';

class BanglaDaysAndMonthsScreen extends StatefulWidget {
  // ignore: constant_identifier_names
  static const String route_name = "bangla_days_and_months_screen";
  const BanglaDaysAndMonthsScreen({Key? key}) : super(key: key);

  @override
  State<BanglaDaysAndMonthsScreen> createState() =>
      _BanglaDaysAndMonthsScreenState();
}

class _BanglaDaysAndMonthsScreenState extends State<BanglaDaysAndMonthsScreen> {
  final List<String> days = [
    "সোমবার",
    "মঙ্গলবার",
    "বুধবার",
    "বৃহস্পতিবার",
    "শুক্রবার",
    "শনিবার",
    "রবিবার",
  ];

  final List<String> months = [
    "জানুয়ারি",
    "ফেব্রুয়ারি",
    "মার্চ",
    "এপ্রিল",
    "মে",
    "জুন",
    "জুলাই",
    "আগস্ট",
    "সেপ্টেম্বর",
    "অক্টোবর",
    "নভেম্বর",
    "ডিসেম্বর",
  ];

  bool isDay = true;
  @override
  Widget build(BuildContext context) {
    Size _size = Size(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text("দিন এবং মাস"),
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
        children: isDay
            ? days
                .map<Widget>(
                  (day) => Container(
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
                )
                .toList()
            : months
                .map<Widget>(
                  (month) => Container(
                    decoration: BoxDecoration(
                      gradient: MyPalette.gradient,
                      borderRadius: BorderRadius.circular(
                        _size.width(25),
                      ),
                    ),
                    child: Center(
                      child: Text(
                        month,
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                    ),
                  ),
                )
                .toList(),
      ),
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
                setState(() {
                  isDay = true;
                });
              },
              child: Container(
                alignment: Alignment.center,
                width: _size.screenWidth() / 2,
                child: Text(
                  "Days",
                  style: Theme.of(context).textTheme.bodyText1!.copyWith(
                        color: isDay ? Colors.black45 : Colors.white,
                      ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  isDay = false;
                });
              },
              child: Container(
                alignment: Alignment.center,
                width: _size.screenWidth() / 2,
                child: Text(
                  "Months",
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
