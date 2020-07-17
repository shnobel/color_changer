import 'package:color_changer/core/color_generator.dart';
import 'package:color_changer/utils/constants.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  MainScreen({@required this.innerText});
  final String innerText;

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  Color color;
  ColorGenerator colorGenerator;

  @override
  void initState() {
    super.initState();
    colorGenerator = ColorGenerator();
    color = colorGenerator.generateColor();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      key: Key('mainContainer'),
      color: color,
      child: FlatButton(
        key: Key('changeColor'),
        onPressed: () {
          setState(() {
            color = colorGenerator.generateColor();
          });
        },
        child: Text(
          widget.innerText,
          style: textStyle,
        ),
      ),
    );
  }
}
