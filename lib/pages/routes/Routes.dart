import '../form.dart';
import '../search_page.dart';
import 'package:flutter/material.dart';
import '../Tabs.dart';
import '../product.dart';
import '../product_info.dart';
import 'package:flutterroutes/user/login.dart';
import 'package:flutterroutes/user/register_first.dart';
import 'package:flutterroutes/user/register_second.dart';
import 'package:flutterroutes/user/registerThird.dart';




final routes = {
  '/tabs':(context,{arguments})=>TabPage(),//首個加載頁面
  '/product':(context,{arguments})=>ProductPage(aguments: arguments,),
  '/form':(context,{arguments})=>FormPage(arguments: arguments,),
  '/search':(context,{arguments})=>SearchPage(arguments: arguments,),
  '/product_info':(context,{arguments})=>ProductInfoPage(arguments: arguments,),
  '/login':(context)=>Login(),
  '/registerFirst':(context)=>RegisterFirst(),
  '/registerSecond':(context)=>RegisterSecond(),
  '/registerThird':(context)=>RegisterThird(),

};


//固定寫法,多個傳參,好維護
// ignore: missing_return, top_level_function_literal_block
var  onGenerateRoute = (RouteSettings settings) {
    //命名傳值
    // 统一处理
    final String name = settings.name;
    final Function pageContentBuilder = routes[name];
      if (pageContentBuilder != null) {
          if (settings.arguments != null) {
             final Route route = MaterialPageRoute(
              builder: (context) => pageContentBuilder(context, arguments: settings.arguments)
              );
               print(route);
              return route;
          } else {
              final Route route = MaterialPageRoute(

    builder: (context) => pageContentBuilder(context));
          print(route);
    return route;

         }
      }
};
