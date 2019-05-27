import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    title: "ListView",
    home: new Home(),
  ));
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.red[900],
        title: new Text("Daftar Tutorial"),
      ),
      body: new ListView(
        children: <Widget>[
          new ListTutorial(
            gambar: "http://idrcorner.com/images/tutorial/html.jpg",
            judul: "HTML",
          ),
          new ListTutorial(
            gambar: "http://idrcorner.com/images/tutorial/css.jpg",
            judul: "CSS",
          ),
          new ListTutorial(
            gambar: "http://idrcorner.com/images/tutorial/js.jpg",
            judul: "Javascript",
          ),
          new ListTutorial(
            gambar: "http://idrcorner.com/images/tutorial/boots.jpg",
            judul: "Bootstrap",
          ),
          new ListTutorial(
            gambar: "http://idrcorner.com/images/tutorial/es6.jpg",
            judul: "ES6",
          ),
          new ListTutorial(
            gambar: "http://idrcorner.com/images/tutorial/react.jpg",
            judul: "React.js",
          ),
          new ListTutorial(
            gambar: "http://idrcorner.com/images/tutorial/flutter1.jpg",
            judul: "Flutter",
          ),
        ],
      ),
    );
  }
}

class ListTutorial extends StatelessWidget {
  ListTutorial({this.gambar, this.judul});

  final String gambar;
  final String judul;

  @override
  Widget build(BuildContext context) {
    return new Container(
      padding: new EdgeInsets.all(20.0),
      child: new Center(
        child: new Row(
          children: <Widget>[
            new Image(
              image: new NetworkImage(gambar),
              width: 80.0,
            ),
            new Container(
              padding: new EdgeInsets.all(10.0),
              child: new Center(
                  child: new Column(
                children: <Widget>[
                  new Text(
                    judul,
                    style: new TextStyle(fontSize: 20.0),
                  ),
                  new Text(
                    "Ini deskripsi tutorial",
                    style: new TextStyle(fontSize: 13.0, color: Colors.grey),
                  )
                ],
              )),
            )
          ],
        ),
      ),
    );
  }
}
