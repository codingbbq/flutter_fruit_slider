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
            return FruitCard(fruitItem: fruitList[position]);
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
        alignment: Alignment.center,
        height: 60,
        color: Colors.white,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: fruitList.length,
                itemBuilder: (BuildContext context, int position) {
                  return IconButton(
                    icon: Icon(Icons.brightness_1),
                    onPressed: () {
                      controller.nextPage(
                        duration: const Duration(milliseconds: 600),
                        curve: Curves.easeInOut,
                      );
                    },
                    iconSize: 15,
                    color: Colors.grey,
                  );
                },
              ),
            )
          ],
        ));
  }
}
