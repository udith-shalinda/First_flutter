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
    );
  }

  pressHome(){
    print("Home clicked");
  }
  pressSearch(){
    print("search clicked");
  }
}
