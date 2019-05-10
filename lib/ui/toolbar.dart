import 'package:flutter/material.dart';

class toolbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.blue,
        title: new Text("Test App"),
        actions: <Widget>[
          new IconButton(icon: new Icon(Icons.home), onPressed: pressHome),
          new IconButton(icon: new Icon(Icons.search), onPressed: pressSearch),
        ],
      ),

      //other properties
      backgroundColor: Colors.grey.shade200,
      body: new Container(
        alignment: Alignment.center,
        child:new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text(
                "Hello there",
                style: new TextStyle(
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.w800,
                  fontSize: 35,
                  color: Colors.red
                ),
            )

          ],
        )
      ),
    );
  }

  pressHome(){
    print("Home clicked");
  }
  pressSearch(){
    print("search clicked");
  }
}
