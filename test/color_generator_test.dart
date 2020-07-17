import 'dart:ui';
import 'package:color_changer/core/color_generator.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('New color should be generated each time', () {
    final colorGenerator = ColorGenerator();
    Color firstColor = colorGenerator.generateColor();
    Color secondColor = colorGenerator.generateColor();

    expect(firstColor, isNot(equals(secondColor)));
  });
}
