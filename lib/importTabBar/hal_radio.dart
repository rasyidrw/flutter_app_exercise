import 'package:flutter/material.dart';

class Radio extends StatelessWidget {
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
              "RADIO",
              style: new TextStyle(fontSize: 30.0),
            ),
            new Padding(
              padding: new EdgeInsets.all(20.0),
            ),
            new Image(
              image: new NetworkImage(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT7A4_lB8Ff-pojwwW3VonM0bJ-6GwVRxg8HkObdCVLdtBRbhRu"),
              width: 200.0,
            )
          ],
        ),
      ),
    );
  }
}
