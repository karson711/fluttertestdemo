import 'package:flutter/material.dart';
import 'package:fluttertestdemo/routes/Routes.dart' as prefix0;

import 'routes/Routes.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      onGenerateRoute: prefix0.onGenerateRoute,
    );
  }
}


