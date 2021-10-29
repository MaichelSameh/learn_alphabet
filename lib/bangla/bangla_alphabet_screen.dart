import 'package:flutter/material.dart';

import '../palette.dart';
import '../models/size.dart';

class BanglaAlphabetScreen extends StatelessWidget {
  // ignore: constant_identifier_names
  static const String route_name = "bangla_alphabet_screen";
  BanglaAlphabetScreen({Key? key}) : super(key: key);

  final List<String> letters = [
    'ঀ',
    'ঁ',
    'ং',
    'ঃ',
    'অ',
    'আ',
    'ই',
    'ঈ',
    'উ',
    'ঊ',
    'ঋ',
    'ঌ',
    'এ',
    'ঐ',
    'ও',
    'ঔ',
    'ক',
    'খ',
    'গ',
    'ঘ',
    'ঙ',
    'চ',
    'ছ',
    'জ',
    'ঝ',
    'ঞ',
    'ট',
    'ঠ',
    'ড',
    'ঢ',
    'ণ',
    'ত',
    'থ',
    'দ',
    'ধ',
    'ন',
    'প',
    'ফ',
    'ব',
    'ভ',
    'ম',
    'য',
    'র',
    'ল',
    'শ',
    'ষ',
    'স',
    'হ',
    '়',
    'ঽ',
    'া',
    'ি',
    'ী',
    'ু',
    'ূ',
    'ৃ',
    'ৄ',
    'ে',
    'ৈ',
    'ো',
    'ৌ',
    '্',
    'ৎ',
    'ৗ',
    'ড়',
    'ঢ়',
    'য়',
    'ৠ',
    'ৡ',
    'ৢ',
    'ৣ',
    '০',
    '১',
    '২',
    '৩',
    '৪',
    '৫',
    '৬',
    '৭',
    '৮',
    '৯',
    'ৰ',
    'ৱ',
    '৲',
    '৳',
    '৴',
    '৵',
    '৶',
    '৷',
    '৸',
    '৹',
    '৺',
    '৻',
  ];
  @override
  Widget build(BuildContext context) {
    Size _size = Size(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text("বর্ণমালা"),
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
