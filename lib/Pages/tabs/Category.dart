import 'package:flutter/material.dart';

import '../../Collection2.dart';
import '../../Table.dart';
import '../../RowColumnTest.dart';
import '../../Wrap.dart';

class CategoryPage extends StatefulWidget {
  _CategoryPageState createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                child: TabBar(
                  indicatorColor: Colors.blue,
                  labelColor: Colors.white,
                  unselectedLabelColor: Colors.blueGrey,
                  indicatorSize: TabBarIndicatorSize.label,
                  tabs: <Widget>[
                    Tab(text: "热销"),
                    Tab(text: "推荐"),
                    Tab(text: "今日头条"),
                    Tab(text: "体验新闻")
                  ],
                ),
              )
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            CollectionDemo(),
            TableDemo(),
            RowColumnTest(),
            WrapDemo()
          ],
        ),
      ),
    );
  }
}
