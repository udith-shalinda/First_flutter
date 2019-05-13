import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;

import './ui/welcome_home.dart';
import './ui/toolbar.dart';
import './ui/makeItRain.dart';
import './ui/login.dart';


void main() async {
  List _data =  await getJson();
  print(_data[0]['title']);

  runApp( new MaterialApp(
      title:'welcome',
      home: new Scaffold(
              appBar: new AppBar(
              backgroundColor: Colors.greenAccent,
                  title:new Center(
                    child:new Text(
                      "Json test",
                      style: new TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  )
              ),
                backgroundColor: Colors.grey.shade200,
                body: new Center(
                  child: new ListView.builder(
                      itemCount: _data.length,
                      padding: new EdgeInsets.all(10),
                      itemBuilder: (BuildContext context,int position){
                        if(position.isOdd) return new Divider();
                        return new ListTile(
                          title: new Text(
                            "${_data[position]['title']}",
                            style: new TextStyle(
                              fontSize: 23,
                            ),
                          ),

                        );
                      },

                  )
                ),
              )
  )
  );
}

Future<List> getJson() async{
  String apiUrl = "https://jsonplaceholder.typicode.com/posts";
  http.Response response = await http.get(apiUrl);

  return json.decode(response.body);
}
