import 'package:color_changer/screens/main_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';

import '../lib/main.dart';

void main() {
  testWidgets('finds a Text widget', (WidgetTester tester) async {
    await tester.pumpWidget(MainApp());

    final widgetWithText = find.text('Hey There');

    expect(widgetWithText, findsOneWidget);
  });

  testWidgets('Tap a widget should change background color',
      (WidgetTester tester) async {
    await tester.pumpWidget(MainApp());

    final initColor =
        (tester.widget(find.byKey(Key('mainContainer'))) as Container).color;

    await tester.tap(find.byKey(Key('changeColor')));

    await tester.pump();

    //var afterTapColor1 = container.color;
    final afterTapColor =
        (tester.widget(find.byKey(Key('mainContainer'))) as Container).color;

    expect(initColor, isNot(equals(afterTapColor)));
  });
}
