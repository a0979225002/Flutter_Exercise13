import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProductPage extends StatefulWidget {
  final aguments;
  ProductPage({this.aguments,Key key}) : super(key: key);

  @override
  _ProductState createState() => _ProductState(aguments: aguments);
}

class _ProductState extends State<ProductPage> {
  final aguments;
  _ProductState({this.aguments});

  @override
  Widget build(BuildContext context) {
    String name = aguments["name"];
    int price = aguments["price"];
    String ImgeURL = aguments["imageURL"];
    print(name);

    return Scaffold(
      appBar: AppBar(
        title: Text("商品頁面"),
      ),
      body: Card(
        margin: EdgeInsets.all(20),
        child: ListView(
          children: <Widget>[
                CupertinoButton(//能讓文字或圖片當作button,自帶淡入淡出特效
                 pressedOpacity: 0.7,
                 child: Image.network(ImgeURL),
                 onPressed: (){
                   Navigator.pushNamed(context, "/product_info",arguments: {
                     "Id":20200609,
                   });
                 },
               ),
            ListTile(
              title: Text("商品名稱:$name"),
              subtitle: Text("商品價格:$price"),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0, 150, 0, 0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    RaisedButton(
                      child: Text('跳轉到商品頁面'),
                      onPressed: () {
                        Navigator.pushNamed(context, '/product', arguments: {
                          "name": "MacBook16寸",
                          "price": 69000,
                          "imageURL":
                          "https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP776/sp776-mbp15touch-space.jpeg",
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
                        Navigator.pushNamed(context, '/search',
                            arguments: {"id": 123, "name": "lipin"});
                      },
                      color: Theme.of(context).accentColor,
                      textTheme: ButtonTextTheme.primary,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: Padding(
        padding: EdgeInsets.all(20),
        child: FloatingActionButton(
          child: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
    );
  }
}