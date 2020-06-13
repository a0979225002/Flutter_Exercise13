import 'package:flutter/material.dart';

//引入tab 做返回根路徑
import '../pages/Tabs.dart';

class RegisterThird extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("第三步-完成註冊"),
      ),
      body: Center(
        child: Column(
          children: <Widget>[

            Padding(
              padding: const EdgeInsets.only(bottom: 40,top: 40),
              child: Text("完成註冊"),
            ),
            RaisedButton(
              color: Theme.of(context).primaryColor,
              textTheme:ButtonTextTheme.primary,
              child: Text(
                "確認返回主頁面",
              ),
              onPressed: (){
                Navigator.of(context).pop();
                //pushReplacementNamed = 重繪當前頁面,而不是跳轉,所以當返回時是返回時
                // 是返回RegisterFirst的上一頁,而不是registerSecond的上一頁

                //不用替換路由的話,要清除所有前面的路由寫法，返回根路由
                Navigator.of(context).pushAndRemoveUntil(
                    new MaterialPageRoute(builder: (context)=> new TabPage(count: 3,)),
                        (route) => route  == null);
              },
            )
          ],
        ),
      ),
    );;
  }
}
