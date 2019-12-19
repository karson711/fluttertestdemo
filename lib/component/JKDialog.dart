import 'package:flutter/material.dart';
import 'dart:async';

class JKDialog extends Dialog {
  String title;
  String content;

  JKDialog({this.title = '', this.content = ''});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Material(
      type: MaterialType.transparency,
      child: Center(
        child: Container(
          height: 300,
          width: 300,
          color: Colors.white,
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(10),
                child: Stack(
                  children: <Widget>[
                    Align(alignment: Alignment.center, child: Text('${this.title}')),
                    Align(
                      alignment: Alignment.centerRight,
                      child: InkWell(
                        child: Icon(Icons.cancel),
                        onTap: () {
                          Navigator.pop(context);
                        },
                      ),
                    )
                  ],
                ),
              ),
              Divider(),
              Container(
                width: double.infinity,
                padding: EdgeInsets.all(10),
                child: Text('${this.content}', textAlign: TextAlign.left),
              )
            ],
          ),
        ),
      ),
    );
  }
}
