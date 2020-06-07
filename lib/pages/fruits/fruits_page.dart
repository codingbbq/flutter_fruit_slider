import 'package:flutter/material.dart';
import 'apple_card.dart';

class FruitsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Header(),
            Body(),
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
            onPressed: (){
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_ios),
          )
        ],
      ),
    );
  }
}

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height - 80,
      color: Colors.yellow,
      padding: EdgeInsets.symmetric(vertical: 30.0, horizontal: 30.0),
      child: PageView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            AppleCard(),
            AppleCard()
          ],
        )
    );
  }
}