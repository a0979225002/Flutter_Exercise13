import 'dart:math';

import 'package:flutter/material.dart';
class CategoryPage extends StatefulWidget {
  @override
  _CategoryPageState createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  int Num(){
    int countNum;
    return countNum = Random().nextInt(49)+1;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          RaisedButton(
            child: Text("傳值到listview"),
            onPressed: (){
              Navigator.pushNamed(context,'/form',arguments: {
                "Num": Num(),
              });
            },
            color: Theme.of(context).accentColor,
            textTheme: ButtonTextTheme.primary,
          )
        ],
      ),
    );
  }
}
