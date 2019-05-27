import 'package:flutter/material.dart';

class Smartphone extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      child: new Center(
        child: new Column(
          children: <Widget>[
            new Padding(
              padding: new EdgeInsets.all(20.0),
            ),
            new Text(
              "SMARTPHONE",
              style: new TextStyle(fontSize: 30.0),
            ),
            new Padding(
              padding: new EdgeInsets.all(20.0),
            ),
            new Image(
              image: NetworkImage(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT1RsGgTDYBjwO3-xyh97wyLVoUztvDQnlP4shxYA-Q4m9Pry7y7Q"),
              width: 200.0,
            )
          ],
        ),
      ),
    );
  }
}
