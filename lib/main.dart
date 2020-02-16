import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'cupertino_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Flutter",
        theme: ThemeData(primarySwatch: Colors.blue),
        home: HelloPage('This is Title'));
    // home: CupertinoPage());
  }
}

class HelloPage extends StatefulWidget {
  final String title;

  HelloPage(this.title);

  @override
  HelloPageState createState() => HelloPageState();
}

class HelloPageState extends State<HelloPage> {
  String _message = 'Hello world!';
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        // onPressed: () => _changeMessage('!!!!'),
        onPressed: () => plusCount(),
      ),
      appBar: AppBar(title: Text(widget.title)),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              this._message,
              style: TextStyle(fontSize: 32),
            ),
            Text(count.toString(), style: TextStyle(fontSize: 28)),
            RaisedButton(
              child: Text("move display"),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => CupertinoPage()));
              },
            )
          ],
        ),
      ),
    );
  }

  plusCount() {
    setState(() {
      this.count++;
    });
  }
}
