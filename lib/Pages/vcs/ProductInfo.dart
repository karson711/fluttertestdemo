import 'package:flutter/material.dart';


class ProductInfoPage extends StatefulWidget{
  final Map arguments;

  ProductInfoPage({Key key,this.arguments}) : super(key:key);

  _ProductInfoPageState createState() => _ProductInfoPageState(arguments:this.arguments);

}

class _ProductInfoPageState extends State<ProductInfoPage>{
  Map arguments;

  _ProductInfoPageState({this.arguments});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('商品信息'),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.search),
              onPressed: (){
                Navigator.pushNamed(context, '/appBarDemo');
              }
          )
        ],
      ),
      body: Container(
        child: Text("pid=${arguments['pid']}")
      ),
    );
  }
}

