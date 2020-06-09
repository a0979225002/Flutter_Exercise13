import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          RaisedButton(
            child: Text('跳轉到商品頁面'),
            onPressed: () {
              Navigator.pushNamed(context,'/product',arguments: {
                "name":"MacBook16寸",
                "price":69000,
                "imageURL":"https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP776/sp776-mbp15touch-space.jpeg",
              });
            },
            color: Theme.of(context).accentColor,
            textTheme: ButtonTextTheme.primary,
          ),
          SizedBox(
            height: 20,
          ),
          RaisedButton(
            child: Text("跳轉頁面傳值"),
            onPressed: () {
              Navigator.pushNamed(context, '/search',arguments: {

                "id":123,
                "name":"lipin"
              });
            },
            color: Theme.of(context).accentColor,
            textTheme: ButtonTextTheme.primary,
          ),
        ],
      ),
    );
  }
}

