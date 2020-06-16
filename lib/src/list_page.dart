import 'package:flutter/material.dart';

class ListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Container(
          padding: EdgeInsets.all(20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text('아아앙'),
              Padding(
                padding: EdgeInsets.all(8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Text('신과함께-죄와벌',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                        SizedBox(width: 7,),
                        Text("12")
                      ],
                    ),
                    SizedBox(height: 10,),
                    Row(
                      children: <Widget>[
                        Text('평점 : 139'),
                        SizedBox(width: 10,),
                        Text('예매순위 : 1'),
                        SizedBox(width: 10,),
                        Text('예매율 : 35.5'),
                      ],
                    ),
                    SizedBox(height: 10,),
                    Text('개봉일 : 2017-12-20')
                  ],
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}