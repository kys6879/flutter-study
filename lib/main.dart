import 'package:flutter/material.dart';
import 'package:my_app/TodoList.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Flutter",
        theme: ThemeData(primarySwatch: Colors.blue),
        home: TodoList());
    // home: CupertinoPage());
  }
}
