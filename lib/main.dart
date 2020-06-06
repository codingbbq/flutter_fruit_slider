import 'package:flutter/material.dart';
import 'pages/home/home_page.dart';
import 'pages/fruits/fruits_page.dart';
void main() {
  runApp(FlutterFruitSlider());
}

class FlutterFruitSlider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      routes: <String, WidgetBuilder>{
        '/fruits' : (BuildContext context) => FruitsPage()
      },
    );
  }
}
