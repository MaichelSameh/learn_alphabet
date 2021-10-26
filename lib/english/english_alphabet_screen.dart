import 'package:flutter/material.dart';

import '../palette.dart';
import '../models/size.dart';

class EnglishAlphabetScreen extends StatelessWidget {
  // ignore: constant_identifier_names
  static const String route_name = "english_alphabet_screen";
  EnglishAlphabetScreen({Key? key}) : super(key: key);

  final List<String> letters = [
    'A',
    'B',
    'C',
    'D',
    'E',
    'F',
    'G',
    'H',
    'I',
    'J',
    'K',
    'L',
    'M',
    'N',
    'O',
    'P',
    'Q',
    'R',
    'S',
    'T',
    'U',
    'V',
    'W',
    'X',
    'Y',
    'Z',
  ];
  @override
  Widget build(BuildContext context) {
    Size _size = Size(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Alphabet"),
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
          children: letters
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
