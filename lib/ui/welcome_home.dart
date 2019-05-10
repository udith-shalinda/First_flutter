import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new Container(
        color: Colors.blue,
        alignment: Alignment.center,

        child:new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text(
            "Hello there!",
              textDirection: TextDirection.ltr,
              style: new TextStyle(
                fontSize: 34,
                fontWeight: FontWeight.w800,
                fontStyle: FontStyle.italic,
                color: Colors.red,
              ),
            ),

            new Text(
              "Hello there!!!",
              textDirection: TextDirection.ltr,
              style: new TextStyle(
                fontSize: 34,
                fontWeight: FontWeight.w800,
                fontStyle: FontStyle.italic,
                color: Colors.red,
              ),
            ),

          ],
        )




    );
  }
}
