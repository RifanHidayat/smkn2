import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "SMKN 2 Payakumbuh",
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: WebView(
          initialUrl: 'https://tes.smkn2pyk.sch.id',
          javascriptMode: JavascriptMode.unrestricted,
          onPageStarted: (String url) {
            // Do something when page starts loading
          },
          onPageFinished: (String url) {
            // Do something when page finishes loading
          },
          navigationDelegate: (NavigationRequest request) {
            // You can control navigation behavior here
            return NavigationDecision.navigate;
          },
        ),
      ),
    );
  }
}
