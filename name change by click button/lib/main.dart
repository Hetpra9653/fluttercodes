import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "nothing",
      home: new HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String data = "hello world";
  void _newtext() {
    setState(() {
      if (data.startsWith("h")) {
        data = "welcome to the world of flutter";
      } else {
        data = "hello world";
      }
    });
  }

  Widget _bodywidget() {
    return new Container(
      padding: const EdgeInsets.all(5.0),
      child: new Center(
          child: new Column(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
        new Text(
          data,
          style: new TextStyle(
            color: Colors.redAccent,
            fontSize: 25.0,
          ),
        ),
        new RaisedButton(
          child: new Text(
            "click",
            style: new TextStyle(
              color: Colors.white,
              fontSize: 25.0,
            ),
          ),
          onPressed: _newtext,
          color: Colors.blueGrey,
        )
      ])),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(
          title: new Text("homebar"),
        ),
        body: _bodywidget());
  }
}
