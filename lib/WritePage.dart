import 'package:flutter/material.dart';

class WritePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding:
          EdgeInsets.only(left: 12.0, right: 12.0, top: 24.0, bottom: 24.0),
      child: Column(
        children: <Widget>[
          TextFormField(
            decoration: InputDecoration(labelText: "제목"),
          ),
          TextFormField(
            decoration: InputDecoration(labelText: "글"),
            keyboardType: TextInputType.multiline,
            maxLines: null,
          ),
          Container(
            margin: EdgeInsets.only(
                left: 12.0, right: 12.0, top: 24.0, bottom: 24.0),
            child: RaisedButton(
              onPressed: null,
              child: Text("올리기"),
            ),
          )
        ],
      ),
    );
  }
}
