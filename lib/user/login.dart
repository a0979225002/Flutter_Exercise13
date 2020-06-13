import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text(
          "登入"
        ),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(bottom: 40,top: 40),
              child: Text("這是一個登入頁面,點擊登入會執行登入動作"),
            ),
            RaisedButton(
              color: Theme.of(context).accentColor,
              textTheme: ButtonTextTheme.primary,
              child: Text(
                "登入"
              ),
              onPressed: (){
                  Navigator.of(context).pop();
              },
            )
          ],
        ),
      ),
    );
  }
}
