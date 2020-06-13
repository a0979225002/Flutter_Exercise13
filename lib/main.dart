import 'dart:math';

import 'package:flutter/material.dart';
import 'pages/Tabs.dart';
import 'pages/routes/Routes.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(// 如果需要統一管理傳值需在這裡定義
      title: '跳轉頁面傳值,易維護版',
//      home: TabPage(),
//      routes: {  //專案式管理傳值頁面
//        //簡稱命名頁面
//        '/form':(context)=>FormPage(),
//        //需在要跳轉的頁面 Navigator.pushNamed(context,'/form');
//        'search':(context)=>SearchPage(),
//        //需在要跳轉的頁面 Navigator.pushNamed(context,'/search');
//      },
        initialRoute: '/tabs', //初始化家載的頁面
        onGenerateRoute: onGenerateRoute,//不需加()
    );
  }
}
