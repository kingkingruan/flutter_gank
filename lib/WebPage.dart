import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

class GankWebPage extends StatefulWidget {
  String url;

  GankWebPage(this.url);

  @override
  createState() => WebPageState(url);
}

class WebPageState extends State<GankWebPage> {
  String url;

  WebPageState(this.url);

  @override
  Widget build(BuildContext context) {
    return WebviewScaffold(
      url: url,
    );
  }
}
