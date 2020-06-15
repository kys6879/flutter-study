import 'package:flutter/material.dart';

class ListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Padding(padding: EdgeInsets.all(8.0), child: Text('Welcome'),),
        Padding(padding: EdgeInsets.all(8.0), child: Text('환상동화'),),
        Padding(padding: EdgeInsets.all(8.0), child: Text('Pretty'),),
        Padding(padding: EdgeInsets.all(8.0), child: Text('회전목마'),),
        Padding(padding: EdgeInsets.all(8.0), child: Text('Rococo'),),
        Padding(padding: EdgeInsets.all(8.0), child: Text('With*One'),),
        Padding(padding: EdgeInsets.all(8.0), child: Text('환상동화 (Japanese Ver.)'),),
        Padding(padding: EdgeInsets.all(8.0), child: Text('회전목마 (Japanese Ver.)'),),
      ],
    );
  }
}