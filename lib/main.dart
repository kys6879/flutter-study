import 'package:flutter/material.dart';
import 'package:my_app/RoutePage.dart';
import 'package:my_app/TodoList.dart';
import 'package:my_app/src/WelcomePage.dart';

// void main() => runApp(MyApp());
// void main() => runApp(RouteApp());
void main() => runApp(LoginApp());

class LoginApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter",
      theme: ThemeData(primarySwatch: Colors.blue),
      home: WelcomePage(),
    );

    // home: CupertinoPage());
  }
}

// class TodoApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: "Flutter",
//       theme: ThemeData(primarySwatch: Colors.blue),
//       home: TodoList(),
//     );

//     // home: CupertinoPage());
//   }
// }

// class RouteApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'RouteApp',
//       initialRoute: '/login',
//       routes: {
//         '/login': (context) => LoginPage(),
//         '/second': (BuildContext context) => SecondScreen(),
//       },
//     );
//   }
// }
