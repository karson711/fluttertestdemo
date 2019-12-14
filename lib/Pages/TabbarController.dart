import 'package:flutter/material.dart';

class TabBarControlPage extends StatefulWidget {
  TabBarControlPage({Key key}) : super(key: key);

  @override
  _TabBarControlPageState createState() => _TabBarControlPageState();
}

class _TabBarControlPageState extends State<TabBarControlPage>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _tabController.dispose();
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = new TabController(vsync: this, length: 2);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TabBarControllerPage'),
        bottom: TabBar(
          controller: this._tabController,
          tabs: <Widget>[
            Tab(text: '热销'),
            Tab(text: '推荐')
          ],
        ),
      ),
      body: TabBarView(
        controller: this._tabController,
        children: <Widget>[
          Container(child: Text('热销')),
          Container(child: Text('推荐'))
        ],
      ),
    );
  }
}
