import 'package:flutter/material.dart';
import 'tabs/CategoryPage.dart';
import 'tabs/HomePage.dart';
import 'tabs/SettingPage.dart';

class TabPage extends StatefulWidget {

  final int count;

  TabPage({this.count = 0});


  @override
  _State createState() => _State(count);
}

class _State extends State<TabPage> {

   int countNum;
  _State(int count){
    this.countNum = count;
  }


  List list = [
    HomePage(),
    CategoryPage(),
    SettingPage(),
    SettingPage()
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('routes 傳值'),
      ),
      body: list[this.countNum],
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 30,
        selectedItemColor: Colors.deepOrange,
        type: BottomNavigationBarType.fixed,
        currentIndex: this.countNum,
        onTap: (int index){
          setState(() {
            this.countNum = index;
          });
        },
        items:[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text("首頁")
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.category),
              title: Text("類別")
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              title: Text("設定")
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.search),
              title: Text("搜尋")
          ),
        ],
      ),
        );
  }
}
