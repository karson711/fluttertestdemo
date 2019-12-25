import 'package:flutter/material.dart';
import 'package:fluttertestdemo/routes/Routes.dart' as prefix0;

import 'package:flutter_localizations/flutter_localizations.dart'; 
import 'package:amap_location/amap_location.dart';

void main(){
  //iOS App_key
  AMapLocationClient.setApiKey('7ac617ac9cda7e0b2f82b7e8d32d3d24');
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      onGenerateRoute: prefix0.onGenerateRoute,

      localizationsDelegates: [
        //此处
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: [
        //此处
        const Locale('zh', 'CH'),
        const Locale('en', 'US'),
      ],
    );
  }
}
