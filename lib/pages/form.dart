import 'package:flutter/material.dart';

class FormPage extends StatefulWidget {
  final arguments;

   FormPage({this.arguments,Key key}) : super(key: key);
  @override
  _FormState createState() => _FormState(arguments: arguments);
}

class _FormState extends State<FormPage> {
  final arguments;
  _FormState({this.arguments});

  @override
  Widget build(BuildContext context) {
    int Num = arguments['Num'] != null ? arguments['Num']:0;
    return Scaffold(
      appBar: AppBar(
        title: Text("我是ListView頁面(隨機數:${Num})"),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            title: Text("1.隨機數:${Num}"),
          ),
          ListTile(
            title: Text("2.隨機數:${Num}"),
          ),
          ListTile(
            title: Text("3.隨機數:${Num}"),
          ),
        ],
      ),
    );
  }
}