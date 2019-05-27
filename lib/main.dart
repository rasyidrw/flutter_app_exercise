import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    home: new PageOne(),
    title: "Navigasi App",
    routes: <String, WidgetBuilder>{
      '/Pageone': (BuildContext context) => new PageOne(),
      '/Pagetwo': (BuildContext context) => new PageTwo(),
    },
  ));
}

class PageOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("MUSIC"),
      ),
      body: new Center(
        child: new IconButton(
          icon: new Icon(Icons.headset, size: 50.0, color: Colors.blue),
          onPressed: (){
            Navigator.pushNamed(context, '/Pagetwo');
          },
        ),
      ),
    );
  }
}

class PageTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("SPEAKER"),
      ),
      body: new Center(
        child: new IconButton(
          icon: new Icon(Icons.speaker, size: 50.0, color: Colors.green),
          onPressed: (){
            Navigator.pushNamed(context, '/Pageone');
          },
        ),
      ),
    );
  }
}

