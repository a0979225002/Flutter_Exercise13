import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  final arguments;
  SearchPage({this.arguments,Key key}) : super(key: key);

  @override
  _SearchPageState createState() => _SearchPageState(arguments: arguments);
}

class _SearchPageState extends State<SearchPage> {

  final arguments;

  _SearchPageState({this.arguments});


  @override
  Widget build(BuildContext context) {
    int id = arguments['id'];
    String name = arguments['name'];


    return Scaffold(
      appBar: AppBar(
        title: Text("我是搜尋頁面"),
      ),
      body: Text("我是搜索頁面${arguments !=null ? "${id}+Name:${name}":'0'}"),
    );
  }
}