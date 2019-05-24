import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    title: "Card & Parsing",
    home: new HalamanSatu(),
  ));
}

class HalamanSatu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Card & Parsing Tutorial"),
      ),
      body: new Container(
        child: new Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            new MyCard(icon: Icons.home, teks: "Home", warnaIcon: Colors.brown,),
            new MyCard(icon: Icons.account_circle, teks: "Profile", warnaIcon: Colors.blue,),
            new MyCard(icon: Icons.settings, teks: "Settings", warnaIcon: Colors.red,),
            new MyCard(icon: Icons.apps, teks: "Menu", warnaIcon: Colors.green,),
          ],
        ),
      ),
    );
  }
}

class MyCard extends StatelessWidget {

MyCard({this.icon, this.teks, this.warnaIcon});
final IconData icon;
final String teks;
final Color warnaIcon;

  @override
  Widget build(BuildContext) {
    return new Container(
      padding: new EdgeInsets.all(10.0),
      child: new Card(
          child: new Column(
        children: <Widget>[
          new Icon(
            icon,
            size: 50.0,
            color: warnaIcon,
          ),
          new Text(
            teks,
            style: new TextStyle(fontSize: 20.0),
          ),
        ],
      )),
    );
  }
}
