import 'package:flutter/material.dart';

import 'palette.dart';
import 'size.dart';

class HomeScreen extends StatelessWidget {
  // ignore: constant_identifier_names
  static const String route_name = "home_screen";
  HomeScreen({Key? key}) : super(key: key);

  final List<String> languages = [
    "English",
    "Arabic",
    "Bangla",
    "Hindi",
  ];
  @override
  Widget build(BuildContext context) {
    Size _size = Size(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Let's Learn"),
      ),
      body: ListView(
          padding: EdgeInsets.symmetric(
            horizontal: _size.width(15),
            vertical: _size.height(15),
          ),
          children: languages
              .map<Widget>(
                (lang) => Container(
                  height: _size.height(200),
                  margin: EdgeInsets.symmetric(vertical: _size.height(15)),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(_size.width(15)),
                    gradient: const LinearGradient(
                      colors: MyPalette.containers_gradient,
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 5,
                        spreadRadius: 3,
                        offset: const Offset(2, 2),
                        color: MyPalette.primary_color.withOpacity(0.2),
                      ),
                    ],
                  ),
                  child: Text(
                    lang,
                    style: Theme.of(context).textTheme.headline2,
                  ),
                ),
              )
              .toList()),
    );
  }
}
