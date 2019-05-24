import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "Tutor4 Application",
    home: new ExamplePage(),
  ));
}

class ExamplePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.white,
      appBar: new AppBar(
        backgroundColor: Colors.deepPurple,
        leading: new Icon(Icons.home),
        title: new Center(
          child: new Text("Row-Col Layout Tutorial"),
        ),
        actions: <Widget>[new Icon(Icons.search)],
      ),
      body: new Container(
          child: new Column(
        children: <Widget>[
          new Icon(
            Icons.local_pizza,
            size: 70.0,
            color: Colors.orange,
          ),
          new Row(
            children: <Widget>[
              new Icon(
                Icons.donut_large,
                size: 70.0,
                color: Colors.red,
              ),
              new Icon(
                Icons.donut_large,
                size: 70.0,
                color: Colors.red,
              ),
              new Icon(
                Icons.donut_large,
                size: 70.0,
                color: Colors.red,
              ),
            ],
          ),
          new Icon(
            Icons.cake,
            size: 70.0,
            color: Colors.pink[200],
          ),
        ],
      )),
    );
  }
}
