import 'package:flutter/material.dart';
import 'src/main_page.dart';
// void main() => runApp(MyApp());
// void main() => runApp(RouteApp());
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter",
      theme: ThemeData(primarySwatch: Colors.blue),
//      home: WelcomePage(),
      home: MainPage()
    );
  }
}
