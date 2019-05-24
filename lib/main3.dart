import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "Tutor3 Application",
    home: new FirstPage(),
  ));
}

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.white,
      appBar: new AppBar(
        backgroundColor: Colors.deepPurple[900],
        leading: new Icon(Icons.home),
        title: new Center(
          child: new Text("AppBar Tutorial"),
        ),
        actions: <Widget>[new Icon(Icons.search)],
      ),
    );
  }
}
