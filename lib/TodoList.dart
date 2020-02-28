import 'package:flutter/material.dart';
import 'dart:developer' as developer;


class TodoList extends StatefulWidget {
  @override
  _TodoListState createState() => _TodoListState();
}

class _TodoListState extends State<TodoList> {
  List<String> _todoItems = [];

  void _addTodoItem(String text) {
    if (text.length > 0) {
      setState(() {
        _todoItems.add(text);
      });
    }
  }

  void _removeTodoItem(int index) {
    setState(() {
      _todoItems.removeAt(index);
    });
  }

  void _pushAddTodoScreen() {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) {
      return Scaffold(
        appBar: AppBar(
          title: Text('일정 추가'),
        ),
        body: TextField(
          autofocus: true,
          onSubmitted: (val) {
            _addTodoItem(val);
            Navigator.pop(context);
          },
          decoration: new InputDecoration(
              hintText: '일정을 입력하세요!', contentPadding: EdgeInsets.all(16.0)),
        ),
      );
    }));
  }

  Widget _buildTodoList() {
    return ListView.builder(
      itemBuilder: (context, index) {
        if (index < _todoItems.length) {
          return _buildTodoItem(_todoItems[index], index);
        }
      },
    );
  }

  void _promptRemoveTodoItem(int index) {
    developer.log(index);
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('${_todoItems[index]}작업을 끝내셨나요?'),
            actions: <Widget>[
              FlatButton(
                  child: Text('취소'),
                  onPressed: () => Navigator.of(context).pop()),
              FlatButton(
                child: Text('완료!'),
                onPressed: () {
                  _removeTodoItem(index);
                  Navigator.of(context).pop();
                },
              )
            ],
          );
        });
  }

  Widget _buildTodoItem(String todoItem, int index) {
    return ListTile(
      title: Text(todoItem),
      onTap: () => _promptRemoveTodoItem(index),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("일정 관리~~"),
      ),
      body: _buildTodoList(),
      floatingActionButton: FloatingActionButton(
        onPressed: _pushAddTodoScreen,
        tooltip: '일정 추가',
        child: Icon(Icons.add),
      ),
    );
  }
}
