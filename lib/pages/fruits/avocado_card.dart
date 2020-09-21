import 'package:flutter/material.dart';

class AvocadoCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Center(
          child: Container(
            width: 250,
            height: 250,
            child: Image.asset(
              "assets/images/avocado.png",
              fit: BoxFit.contain,
            ),
          ),
        ),
        SizedBox(
          height: 30.0,
        ),
        Text(
          "Avocado",
          style: TextStyle(fontSize: 30.0),
        ),
        SizedBox(
          height: 10.0,
        ),
        Text(
            "The avocado, a tree likely originating from south-central Mexico, is classified as a member of the flowering plant family Lauraceae. The fruit of the plant, also called an avocado, is botanically a large berry containing a single large seed.",
            style: TextStyle(
              fontSize: 18.0,
              color: Colors.grey,
            ))
      ],
    );
  }
}
