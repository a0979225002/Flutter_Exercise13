import 'package:flutter/material.dart';

class RegisterFirst extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("第一步-輸入手機號碼"),
      ),
      body: Center(
        child: Column(
          children: <Widget>[

            Padding(
              padding: const EdgeInsets.only(bottom: 40,top: 40),
              child: Text("這是註冊頁面第一步,請輸入手機號碼,然後點擊下一步"),
            ),
            RaisedButton(
              color: Theme.of(context).primaryColor,
              textTheme:ButtonTextTheme.primary,
              child: Text(
                "下一步",
              ),
              onPressed: (){
                  Navigator.pushNamed(context, '/registerSecond');
//                    Navigator.of(context).pushReplacementNamed('/registerSecond');
                    //pushReplacementNamed = 重繪當前頁面,而不是跳轉,所以當返回時是返回時
                    // 是返回RegisterFirst的上一頁,而不是registerSecond的上一頁
              },
            )
          ],
        ),
      ),
    );
  }
}
