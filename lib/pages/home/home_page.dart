import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          body: SafeArea(
          child: Container(
          color: Colors.white,
          padding: EdgeInsets.all(20.0),
          child: ListView(
            children: <Widget>[
              Card(
                child: Column(
                  children: <Widget>[
                    ListTile(
                      contentPadding: EdgeInsets.all(15.0),
                      leading: Icon(Icons.movie),
                      title: Text(
                        "Fruits",
                        style: TextStyle(
                          fontSize: 30.0
                        ),
                      ),
                      subtitle: Text("Freshly available Fruits"),
                      trailing: IconButton(
                        onPressed: (){
                          Navigator.pushNamed(context, '/fruits');
                        },
                        icon: Icon(Icons.arrow_right),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Card(
                child: Column(
                  children: <Widget>[
                    ListTile(
                      contentPadding: EdgeInsets.all(15.0),
                      leading: Icon(Icons.movie),
                      title: Text(
                        "Fruits",
                        style: TextStyle(
                          fontSize: 30.0
                        ),
                      ),
                      subtitle: Text("Freshly available Fruits"),
                      trailing: IconButton(
                        onPressed: (){},
                        icon: Icon(Icons.arrow_right),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}