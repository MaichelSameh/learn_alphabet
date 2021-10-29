import 'package:flutter/material.dart';

import '../palette.dart';
import '../models/size.dart';

class HindiAlphabetScreen extends StatelessWidget {
  // ignore: constant_identifier_names
  static const String route_name = "hindi_alphabet_screen";
  HindiAlphabetScreen({Key? key}) : super(key: key);

  final List<String> letters = [
    "ँ",
    "ं",
    "ः",
    "अ",
    "आ",
    "इ",
    "ई",
    "उ",
    "ऊ",
    "ऋ",
    "ए",
    "ऐ",
    "ऑ",
    "ओ",
    "औ",
    "क",
    "ख",
    "ग",
    "घ",
    "च",
    "छ",
    "ज",
    "झ",
    "ञ",
    "ट",
    "ठ",
    "ड",
    "ढ",
    "ण",
    "त",
    "थ",
    "द",
    "ध",
    "न",
    "प",
    "फ",
    "ब",
    "भ",
    "म",
    "य",
    "र",
    "ल",
    "व",
    "श",
    "ष",
    "स",
    "ह",
    "़",
    "ा",
    "ि",
    "ी",
    "ु",
    "ू",
    "ृ",
    "ॅ",
    "े",
    "ै",
    "ॉ",
    "ो",
    "ौ",
    "्",
    "ऋ",
    "ॅ",
    "ः",
    "ञ",
    "ऑ",
    "ऐ",
    "ऊ",
    "ढ",
    "ृ",
    "ओ",
    "ॉ",
    "ण",
    "ौ",
    "ठ",
    "झ",
    "ई",
    "घ",
    "ष",
    "ँ",
    "इ",
    "फ",
    "ध",
    "छ",
    "ट",
    "आ",
    "भ",
    "़",
    "ख",
    "ड",
    "श",
    "उ",
    "ू",
    "औ",
    "अ",
    "थ",
    "च",
    "ग",
    "ए",
    "ज",
    "ु",
    "व",
    "द",
    "ब",
    "ै",
    "य",
    "ो",
    "ल",
    "प",
    "त",
    "्",
    "ि",
    "म",
    "ं",
    "ी",
    "न",
    "स",
    "ह",
    "र",
    "े",
    "क",
    "ा",
  ];

  @override
  Widget build(BuildContext context) {
    Size _size = Size(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text("वर्णमाला"),
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