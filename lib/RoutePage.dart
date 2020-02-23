import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  static String APP_BAR_TITLE = 'FirstScreen!!!';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(APP_BAR_TITLE),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('Launch Screen'),
          onPressed: () {
            Navigator.pushNamed(context, '/second');
          },
        ),
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  static String APP_BAR_TITLE = 'SecondScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(APP_BAR_TITLE),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('Go Back!'),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}
