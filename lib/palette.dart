// ignore_for_file: constant_identifier_names

import 'package:flutter/material.dart';

class MyPalette {
  // ignore: non_constant_identifier_names
  static const List<Color> containers_gradient = [
    Colors.teal,
    Color.fromRGBO(0, 207, 186, 1),
  ];
  static const Color primary_color = Colors.teal;
  static const LinearGradient gradient = LinearGradient(
    colors: MyPalette.containers_gradient,
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );
}
