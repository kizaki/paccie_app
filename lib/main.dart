import 'package:flutter/material.dart';

/**
   体験実習用アプリ（ぱっっちぃアプリ）
 */
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ぱっちぃアプリ',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'ぱっちぃアプリ'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Text text; // テキストオブジェクトをグローバル宣言

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: new Stack(children: <Widget>[
        new Image.asset(
          "images/paccie_speak.png",
          fit: BoxFit.fitWidth,
        ),
        new Align(
          alignment: new Alignment(0.8, 0.8),
          child: Container(
            margin: new EdgeInsets.only(bottom: 30.0),
            child: new RaisedButton(
              onPressed: () {
                setState(() {
                  text = new Text("初アプリ",
                      style: new TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 40.0,
                          color: Colors.pink[500]));
                });
              },
              child: new Text(
                "祝！",
                style: new TextStyle(color: Colors.white),
              ),
              color: Colors.pink[500],
            ),
          ),
        ),
        new Align(
          alignment: new Alignment(0.9, -0.6),
          child: new Container(margin: new EdgeInsets.all(30.0), child: text),
        ),
      ], fit: StackFit.expand),
    );
  }
}
