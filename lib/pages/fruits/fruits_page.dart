import 'package:flutter/material.dart';
import 'apple_card.dart';

class FruitsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Header(), // The back button
            Body(), // PageView Widget
            Navigation() // Controlling the pageView widget
          ],
        ),
      ),
    );
  }
}

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        children: <Widget>[
          IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_ios),
          )
        ],
      ),
    );
  }
}

PageController controller = PageController();

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height - 140,
        color: Colors.yellow,
        padding: EdgeInsets.symmetric(vertical: 30.0, horizontal: 30.0),
        child: PageView(
          controller: controller,
          scrollDirection: Axis.horizontal,
          children: <Widget>[AppleCard(), AppleCard()],
        ));
  }
}

class Navigation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 150,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          IconButton(
            icon: Icon(Icons.brightness_1),
            onPressed: () {
              controller.jumpToPage(2);
            },
            iconSize: 20,
            color: Colors.red,
          ),
          IconButton(
            icon: Icon(Icons.brightness_1),
            onPressed: () {
              controller.jumpToPage(1);
            },
            iconSize: 20,
            color: Colors.red,
          )
        ],
      ),
    );
  }
}
