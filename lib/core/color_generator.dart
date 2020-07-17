import 'dart:math';

import 'package:flutter/material.dart';

class ColorGenerator {
  Color generateColor() {
    Random random = Random();
    return Color.fromRGBO(random.nextInt(256), random.nextInt(256),
        random.nextInt(256), random.nextDouble());
  }
}
