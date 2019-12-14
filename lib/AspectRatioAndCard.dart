import 'package:flutter/material.dart';

import 'res/listData.dart';

class AspectRatioCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView(
        children: listData.map((value) {
          return Card(
            margin: EdgeInsets.all(10),
            child: Column(
              children: <Widget>[
                AspectRatio(
                  aspectRatio: 16 / 9,
                  child:Image.network(value['imageUrl'],fit: BoxFit.cover),
                ),
                ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(value['imageUrl'])
                  ),
                  title: Text(value['title']),
                  subtitle: Text(value['author'],overflow: TextOverflow.clip,maxLines: 1),
                )
              ],
            ),
          );
        }).toList()
    );
  }
}