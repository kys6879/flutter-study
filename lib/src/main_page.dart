import 'package:flutter/material.dart';

import 'list_page.dart';
import 'grid_page.dart';
class MainPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MainPageState();
  }
}

class _MainPageState extends State<MainPage> {
  @override
  int _selectedTabIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('IZ*ONE'),
//        leading: Icon(Icons.menu),
        actions: <Widget>[
          PopupMenuButton<int>(
            icon: Icon(Icons.sort),
            onSelected: (value) {
              if(value == 0) print("최");
              else if (value == 1) print('예');
              else print("나");
            },
            itemBuilder: (context) {
              return [
                PopupMenuItem(value : 0, child: Text("최")),
                PopupMenuItem(value : 1, child: Text("예")),
                PopupMenuItem(value : 2, child: Text("나"))
              ];
            },
          )
        ],
      ),
      body: _buildPage(_selectedTabIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.view_list),
              title: Text('예')
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.grid_on),
              title: Text('나')
          ),
        ],
        currentIndex: _selectedTabIndex,
        onTap: (index) {
          setState(() {
            _selectedTabIndex = index;
            print("$_selectedTabIndex Tab Clicked!");
          });
        },
      ),
    );
  }

}

Widget _buildPage(index) {
  if(index == 0)
    return ListPage();
  else
    return GridPage();
}