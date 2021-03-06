import 'package:flutter/material.dart';
import 'package:flutter_fruit_slider/model/fruits.dart';

class FruitCard extends StatelessWidget {
  final Fruit fruitItem;

  const FruitCard({Key key, this.fruitItem}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Center(
          child: Container(
              width: 250,
              height: 250,
              child: Image.asset(fruitItem.img, fit: BoxFit.fill)),
        ),
        SizedBox(
          height: 30.0,
        ),
        Text(
          fruitItem.fruitName,
          style: TextStyle(fontSize: 30.0),
        ),
        SizedBox(
          height: 30.0,
        ),
        Text(
          fruitItem.fruitDescription,
          style: TextStyle(fontSize: 16.0),
        )
      ],
    );
  }
}
