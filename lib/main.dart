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
  final text =
      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(text * 4),
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
              Text(text * 10),
            ],
          ),
        ),
      ),
    );
  }
}
