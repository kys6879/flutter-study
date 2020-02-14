import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  // 위젯 부분, 스테이트를 다루는 부분은 분리되어 있다.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // 스테이트를 관리하고, UI를 그리는 부분.

  int count = 0;

  void plusCount() {
    setState(() {
      count++;
    });
  }

  void minusCount() {
    setState(() {
      count--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "첫 Stateful App",
      home: Scaffold(
          appBar: AppBar(
            title: Text("내 Stateful Widget!"),
          ),
          body: Container(
            child: Column(
              children: <Widget>[
                Text(
                  '$count',
                  style: TextStyle(fontSize: 160.0),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    RaisedButton(
                      child: Text(
                        "플러스",
                        style: TextStyle(color: Colors.white),
                      ),
                      color: Colors.red,
                      onPressed: () {
                        plusCount();
                      },
                    ),
                    RaisedButton(
                      child: Text(
                        "마이나스",
                        style: TextStyle(color: Colors.white),
                      ),
                      color: Colors.blue,
                      onPressed: () {
                        minusCount();
                      },
                    )
                  ],
                )
              ],
            ),
          )),
    );
  }
}
