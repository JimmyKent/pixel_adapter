import 'package:flutter/material.dart';
import 'package:pixel_adapter/pixel_adapter.dart';

void main() {
  PixelAdapter.initWidth(1242);
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: Column(
          children: [
            Container(
              width: 100.px,
              height: 100.px,
              color: Colors.orange,
            ),
            Container(
              width: 100,
              height: 100,
              color: Colors.purpleAccent,
            ),
          ],
        ),
      ),
    );
  }
}
