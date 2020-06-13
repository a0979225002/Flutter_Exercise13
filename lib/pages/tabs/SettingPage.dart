import 'package:flutter/material.dart';

class SettingPage extends StatefulWidget {
  @override
  _SettingPageState createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Card(
          margin: EdgeInsets.all(20),
          child: Column(
              children: <Widget>[
                ListTile(
                  title: Text("我是文本1"),
                ),
              ],
            ),
          ),
        Card(
          margin: EdgeInsets.all(20),
          child: Column(
            children: <Widget>[
              ListTile(
                title: Text("我是文本1"),
              ),
            ],
          ),
        ),
        Card(
          margin: EdgeInsets.all(20),
          child: Column(
            children: <Widget>[
              ListTile(
                title: Text("我是文本1"),
              ),
            ],
          ),
        ),
        Card(
          margin: EdgeInsets.all(20),
          child: Column(
            children: <Widget>[
              ListTile(
                title: Text("我是文本1"),
              ),
            ],
          ),
        ),
        Card(
          margin: EdgeInsets.all(20),
          child: Column(
            children: <Widget>[
              ListTile(
                title: Text("我是文本1"),
              ),
            ],
          ),
        ),
        SizedBox(height: 100,),
        Center(
          child: Column(
            children: <Widget>[
              RaisedButton(
                color: Theme.of(context).accentColor,
                textTheme: ButtonTextTheme.primary,
                child: Text("跳轉登入頁面"),
                onPressed: (){
                  Navigator.pushNamed(context, '/login');
                },
              ),
              RaisedButton(
                color: Theme.of(context).accentColor,
                textTheme: ButtonTextTheme.primary,
                child: Text("跳轉註冊頁面"),
                onPressed: (){
                  Navigator.pushNamed(context, '/registerFirst');
                },
              ),
            ],
          ),
        )
      ],
    );
  }
}
