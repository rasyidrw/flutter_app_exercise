import 'package:flutter/material.dart';

import './main7import/hal_computer.dart' as computer;
import './main7import/hal_headset.dart' as headset;
import './main7import/hal_radio.dart' as radio;
import './main7import/hal_smartphone.dart' as smartphone;

void main() {
  runApp(new MaterialApp(
    title: "Tab Bar",
    home: new Home(),
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  TabController controller;

  @override
  void initState() {
    controller = new TabController(vsync: this, length: 4);
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.amber,
        title: new Text("Daftar Elektronik"),
        bottom: new TabBar(
          controller: controller,
          tabs: <Widget>[
            new Tab(
              icon: Icon(Icons.computer),
              text: "Computer",
            ),
            new Tab(
              icon: Icon(Icons.headset),
              text: "Headset",
            ),
            new Tab(
              icon: Icon(Icons.radio),
              text: "Radio",
            ),
            new Tab(
              icon: Icon(Icons.smartphone),
              text: "Smartphone",
            ),
          ],
        ),
      ),
      body: new TabBarView(
        controller: controller,
        children: <Widget>[
          new computer.Computer(),
          new headset.Headset(),
          new radio.Radio(),
          new smartphone.Smartphone()
        ],
      ),
      bottomNavigationBar: new Material(
        color: Colors.amber,
        child: new TabBar(
          controller: controller,
          tabs: <Widget>[
            new Tab(
              icon: Icon(Icons.computer),
            ),
            new Tab(
              icon: Icon(Icons.headset),
            ),
            new Tab(
              icon: Icon(Icons.radio),
            ),
            new Tab(
              icon: Icon(Icons.smartphone),
            ),
          ],
        ),
      ),
    );
  }
}
