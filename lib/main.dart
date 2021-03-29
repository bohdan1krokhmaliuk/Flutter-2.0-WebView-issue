import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter 2.0 WebView issue',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter 2.0 WebView issue'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "Lorem Ipsum " * 100,
              ),
              AspectRatio(
                aspectRatio: 16 / 9,
                child: WebView(
                  key: Key('video_1'),
                  initialUrl: 'https://player.vimeo.com/video/495787187',
                  javascriptMode: JavascriptMode.unrestricted,
                ),
              ),
              AspectRatio(
                aspectRatio: 16 / 9,
                child: WebView(
                  key: Key('video_2'),
                  initialUrl:
                      'https://player.vimeo.com/video/8352111?color=ff0179&title=0&byline=0&portrait=0',
                  javascriptMode: JavascriptMode.unrestricted,
                ),
              ),
              Text("Lorem Ipsum " * 5000),
            ],
          ),
        ),
      ),
    );
  }
}
