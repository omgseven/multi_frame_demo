import 'package:flutter/material.dart';
import 'package:multi_frame_demo/page_with_logo.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      onGenerateRoute: simpleRoute,
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

RouteFactory simpleRoute = (settings) {
  return MaterialPageRoute(
      settings: settings,
      builder: (context) => PageWithLogo()
  );
};

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  void _openNextPage() {
    Navigator.of(context).pushNamed('pageWithLogo');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              child: Text('push the button go to next page'),
              onPressed: _openNextPage,
            ),
          ],
        ),
      ),
    );
  }
}
