import 'dart:math';

import 'package:flutter/material.dart';

class SecondColorGenerator {
  List<dynamic> _rgb = [
    0,
    1,
    2,
    3,
    4,
    5,
    6,
    7,
    8,
    9,
    'A',
    'B',
    'C',
    'D',
    'E',
    'F'
  ];

  Color generateColor() {
    int result;
    String color = '0x';
    color += _getRandomColor();

    result = int.tryParse(color);
    if (result == null) {
      throw new FormatException("Incorrect color was generated");
    }
    return Color(result);
  }

  String _getRandomColor() {
    String color = '';
    Random random = Random();

    for (int i = 0; i < 8; i++) {
      int index = random.nextInt(16);
      color += _rgb[index].toString();
    }

    return color;
  }
}
