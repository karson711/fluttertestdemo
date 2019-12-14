import 'package:flutter/material.dart';

import 'package:fluttertestdemo/Pages/Tab.dart';
import 'package:fluttertestdemo/Pages/user/Login.dart';
import 'package:fluttertestdemo/Pages/user/RegisterFirst.dart';
import 'package:fluttertestdemo/Pages/user/RegisterSecond.dart';
import 'package:fluttertestdemo/Pages/user/RegisterThird.dart';
import 'package:fluttertestdemo/Pages/vcs/ProductInfo.dart';
import 'package:fluttertestdemo/Pages/vcs/ProductDetail.dart';
import '../Pages/AppBarDemo.dart';

//配置路由
final routes = {
  '/': (context) => Tabs(),
  '/productDetail': (context) => ProductDetailPage(),
  '/productinfo': (context, {arguments}) =>
      ProductInfoPage(arguments: arguments),
  '/login': (context) => LoginPage(),
  '/registerFirst': (context) => RegisterFirstPage(),
  '/registerSecond': (context) => RegisterSecondPage(),
  '/registerThird': (context) => RegisterThirdPage(),
  '/appBarDemo': (context) => AppBarDemoPage(),
};

//固定写法
var onGenerateRoute = (RouteSettings settings) {
  // 统一处理
  final String name = settings.name;
  final Function pageContentBuilder = routes[name];
  if (pageContentBuilder != null) {
    if (settings.arguments != null) {
      final Route route = MaterialPageRoute(
          builder: (context) =>
              pageContentBuilder(context, arguments: settings.arguments));
      return route;
    }else{
      final Route route = MaterialPageRoute(
          builder: (context) =>
              pageContentBuilder(context));
      return route;
    }
  }
};
