import 'package:flutter/material.dart';

class OrangeCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Center(
          child: Container(
            width: 250,
            height: 250,
            color: Colors.yellow[600],
          ),
        ),
        SizedBox(
          height: 30.0,
        ),
        Text(
          "Orange",
          style: TextStyle(fontSize: 30.0),
        ),
        SizedBox(
          height: 10.0,
        ),
        Text(
          "The word orange derives from the Sanskrit word for \"orange tree\" (नारङ्ग nāraṅga), which in turn derives from a Dravidian root word (compare நரந்தம் narandam which refers to Bitter orange in Tamil).[29] The Sanskrit word reached European languages through Persian نارنگ (nārang) and its Arabic derivative نارنج (nāranj).",
          style: TextStyle(fontSize: 16.0),
        )
      ],
    );
  }
}
