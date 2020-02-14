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
              title: Text("계산기!"),
            ),
            body: Container(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: <Widget>[
                  Text(
                    "$count",
                    style: TextStyle(fontSize: 80.0),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          btnWidget("7"),
                          btnWidget("8"),
                          btnWidget("9"),
                          btnWidget("x")
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          btnWidget("4"),
                          btnWidget("5"),
                          btnWidget("6"),
                          btnWidget("-")
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          btnWidget("1"),
                          btnWidget("2"),
                          btnWidget("3"),
                          btnWidget("+")
                        ],
                      )
                    ],
                  )
                ],
              ),
            )));
  }

  Widget btnWidget(var text) {
    return ButtonTheme(
      minWidth: 80.0,
      height: 50.0,
      child: RaisedButton(
        child: Text("$text"),
      ),
    );
  }
}
