import 'package:flutter/material.dart';

import '../models/size.dart';
import '../palette.dart';

class EnglishNumbersScreen extends StatelessWidget {
  // ignore: constant_identifier_names
  static const String route_name = "english_numbers_screen";
  EnglishNumbersScreen({Key? key}) : super(key: key);
  final List<String> numbers = [
    "1",
    "2",
    "3",
    "4",
    "5",
    "6",
    "7",
    "8",
    "9",
    "10",
  ];
  @override
  Widget build(BuildContext context) {
    Size _size = Size(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Numbers"),
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
        children: numbers
            .map<Widget>(
              (number) => Container(
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
            )
            .toList(),
      ),
    );
  }
}
