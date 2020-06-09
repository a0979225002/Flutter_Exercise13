import 'package:flutter/material.dart';


class ProductInfoPage extends StatefulWidget {
  final Map arguments;
  ProductInfoPage({this.arguments});


  @override
  _ProductInfoPageState createState() => _ProductInfoPageState(arguments:this.arguments);
}

class _ProductInfoPageState extends State<ProductInfoPage> {
  Map arguments;

  _ProductInfoPageState({this.arguments});


  @override
  Widget build(BuildContext context) {
    print(arguments);
    return Scaffold(
      appBar: AppBar(
        title: Text("商品詳細頁面"),
      ),
      body: ListView(
        children: <Widget>[
          Card(
            margin: EdgeInsets.all(20),
            child: Text(
              "商品ID:${arguments["Id"]}",
              style: TextStyle(
                fontSize: 40
              ),
            ),
          ),
        ],
      ),
    );
  }
}

