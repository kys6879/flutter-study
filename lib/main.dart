import 'package:flutter/material.dart';
import 'package:my_app/RoutePage.dart';
import 'package:my_app/TodoList.dart';

// void main() => runApp(MyApp());
void main() => runApp(new RouteApp().routeMaterialApp);

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter",
      theme: ThemeData(primarySwatch: Colors.blue),
      home: TodoList(),
      // initialRoute: '/',
      // routes: {
      //   '/': (context) => FirstScreen(),
      //   '/second': (context) => SecondScreen()
      // },
    );

    // home: CupertinoPage());
  }
}

class RouteApp {
  MaterialApp routeMaterialApp = MaterialApp(
    title: 'RouteApp',
    initialRoute: '/second',
    routes: {
      '/': (context) => FirstScreen(),
      '/second': (context) => SecondScreen()
    },
  );
}
