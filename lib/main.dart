import 'package:flutter/material.dart';
import 'screens/main_screen.dart';

void main() => runApp(MainApp());

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainScreen(
        innerText: 'Hey There',
      ),
    );
  }
}
