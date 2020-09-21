import 'package:flutter/material.dart';

class AppleCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Center(
          child: Container(
              width: 250,
              height: 250,
              child: Image.asset("assets/images/apple.png", fit: BoxFit.fill)),
        ),
        SizedBox(
          height: 30.0,
        ),
        Text(
          "Apple",
          style: TextStyle(fontSize: 30.0),
        ),
        SizedBox(
          height: 30.0,
        ),
        Text(
          "An apple is an edible fruit produced by an apple tree (Malus domestica). Apple trees are cultivated worldwide and are the most widely grown species in the genus Malus. The tree originated in Central Asia.",
          style: TextStyle(fontSize: 16.0),
        )
      ],
    );
  }
}
