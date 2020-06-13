import 'package:flutter/material.dart';

class RegisterSecond extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("第二步-輸入驗證碼"),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 20,bottom: 20),
              child: Text("輸入驗證碼完成註冊"),
            ),
            RaisedButton(
              color: Theme.of(context).primaryColor,
              textTheme:ButtonTextTheme.primary,
              child: Text(
                "下一步",
              ),
              onPressed: (){
                  Navigator.pushNamed(context, '/registerThird');
//                Navigator.of(context).pushReplacementNamed('/registerThird');
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
