import 'package:flutter/material.dart';
import 'package:flutter_fruit_slider/model/fruits.dart';
import 'package:flutter_fruit_slider/pages/fruits/fruit_card.dart';

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
        color: Colors.white,
        padding: EdgeInsets.symmetric(vertical: 30.0, horizontal: 30.0),
        child: PageView.builder(
          itemBuilder: (context, position) {
            return FruitCard(fruitItem: fruitList[2]);
          },
          itemCount: fruitList.length,
          controller: controller,
          scrollDirection: Axis.horizontal,
        ));
  }
}

class Navigation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 100,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          IconButton(
            icon: Icon(Icons.brightness_1),
            onPressed: () {
              controller.nextPage(
                duration: const Duration(milliseconds: 600),
                curve: Curves.easeInOut,
              );
            },
            iconSize: 15,
            color: Colors.grey,
          ),
          IconButton(
            icon: Icon(Icons.brightness_1),
            onPressed: () {
              print(controller.page);
              controller.previousPage(
                duration: const Duration(milliseconds: 400),
                curve: Curves.easeInOut,
              );
            },
            iconSize: 15,
            color: Colors.grey,
          )
        ],
      ),
    );
  }
}
