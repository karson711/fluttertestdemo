import 'package:flutter/material.dart';

import 'package:flutter_inappwebview/flutter_inappwebview.dart';

class WebVCPage extends StatefulWidget {
  Map arguments;
  WebVCPage({Key key, this.arguments}) : super(key: key);

  @override
  _WebVCPageState createState() => _WebVCPageState(arguments: this.arguments);
}

class _WebVCPageState extends State<WebVCPage> {
  Map arguments;
  bool _flag = true;
  InAppWebViewController webView;
  _WebVCPageState({this.arguments});

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print('-------传值-------${this.arguments}');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("${this.arguments['title']}"),
      ),
      body: Column(
        children: <Widget>[
          this._flag ? _getMoreWidget() : Text(''),
          Expanded(
            child: InAppWebView(
              initialUrl: '${this.arguments['url']}',
              initialHeaders: {

              },
              initialOptions: InAppWebViewWidgetOptions(
                  inAppWebViewOptions: InAppWebViewOptions(
                    debuggingEnabled: true
                  ),
              ),
              onWebViewCreated: (InAppWebViewController controller) {
                webView = controller;
              },
              onProgressChanged:
                  (InAppWebViewController controller, int progress) {
                setState(() {
                  this._flag = false;
                });
              },
            ),
          ),

          ButtonBar(
              alignment: MainAxisAlignment.center,
              children: <Widget>[
                RaisedButton(
                  child: Icon(Icons.arrow_back),
                  onPressed: () {
                    if (webView != null) {
                      webView.goBack();
                    }
                  },
                ),
                RaisedButton(
                  child: Icon(Icons.arrow_forward),
                  onPressed: () {
                    if (webView != null) {
                      webView.goForward();
                    }
                  },
                ),
                RaisedButton(
                  child: Icon(Icons.refresh),
                  onPressed: () {
                    if (webView != null) {
                      webView.reload();
                    }
                  },
                ),
              ],
            ),
        ],
      ),
    );
  }

  //加载中的圈圈
  Widget _getMoreWidget() {
    return Center(
      child: Padding(
        padding: EdgeInsets.all(10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              '加载中...',
              style: TextStyle(fontSize: 16.0),
            ),
            CircularProgressIndicator(
              strokeWidth: 1.0,
            )
          ],
        ),
      ),
    );
  }
}
